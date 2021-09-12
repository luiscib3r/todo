package com.luisciber.contact_picker

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import android.provider.ContactsContract

import android.content.Intent
import android.app.Activity
import io.flutter.plugin.common.PluginRegistry
import android.app.Activity.RESULT_OK
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


/** ContactPickerPlugin */
class ContactPickerPlugin : FlutterPlugin, MethodCallHandler, PluginRegistry.ActivityResultListener,
    ActivityAware {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "contact_picker")
        channel.setMethodCallHandler(this)
    }

    private lateinit var activity: Activity
    private var pendingResult: Result? = null
    private val pickContact = 2015

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity

        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {}

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {}

    override fun onDetachedFromActivityForConfigChanges() {}

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            "getPlatformVersion" -> {
                result.success("Android ${android.os.Build.VERSION.RELEASE}")
            }
            "selectContact" -> {
                if (pendingResult != null) {
                    pendingResult!!.error(
                        "multiple_requests",
                        "Cancelled by a second request.",
                        null
                    )
                    pendingResult = null
                }
                pendingResult = result

                val i =
                    Intent(Intent.ACTION_PICK, ContactsContract.CommonDataKinds.Phone.CONTENT_URI)
                activity.startActivityForResult(i, pickContact)
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != pickContact) {
            return false
        }

        if (resultCode != RESULT_OK) {
            pendingResult!!.success(null)
            pendingResult = null
            return true
        }

        val contactUri = data?.data!!

        val cursor = activity.contentResolver.query(
            contactUri,
            null,
            null,
            null,
            null
        )!!

        cursor.moveToFirst()

        val phoneType =
            cursor.getInt(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.TYPE))
        val customLabel =
            cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.LABEL))
        val label = ContactsContract.CommonDataKinds.Email.getTypeLabel(
            activity.resources,
            phoneType,
            customLabel
        ) as String
        val number =
            cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER))
        val fullName =
            cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME))

        val phoneNumber: HashMap<String, Any> = HashMap()

        phoneNumber["number"] = number
        phoneNumber["label"] = label

        val contact: HashMap<String, Any> = HashMap()
        contact["fullName"] = fullName
        contact["phoneNumber"] = phoneNumber

        pendingResult!!.success(contact)

        pendingResult = null
        cursor.close()
        return true
    }
}
