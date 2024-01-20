# C++ SDK 

Launcher SDK provided with Sirin files [Download](README#download) `!Client -> Launcher -> SDK`

`sirin-launcher.hpp`
```cpp
#pragma once

#define SIRIN_LAUNCHER_API  __declspec(dllimport)

/*Send register new account request. ASCII ver.*/
extern "C" SIRIN_LAUNCHER_API void Sirin_RegisterA(const char* pszNewLogin, const char* pszNewPassword);

/*Change account password request. ASCII ver.
You MUST be logged in.*/
extern "C" SIRIN_LAUNCHER_API void Sirin_ChangePasswordA(const char* pszOldPassword, const char* pszNewPassword);

/*Send register new account request. Unicode ver.*/
extern "C" SIRIN_LAUNCHER_API void Sirin_RegisterW(const wchar_t* pwszNewLogin, const wchar_t* pwszNewPassword);

/*Login account request. Unicode ver.
You should NOT be logged in.*/
extern "C" SIRIN_LAUNCHER_API void Sirin_LoginW(const wchar_t* pwszLogin, const wchar_t* pwszPassword);

//... full file in the download
```

With the `.libary` and `.dll` you can incorporate this into your c++ project to communicate with the Sirin login servers.

`sirin-launcher.hpp` - Header file explaining all the functions  that you can use 

`sirin-launcher.dll` - Core of the Launcher SDK

`sirin-launcher.lib` - Libary used for linking the SDK to your project

[learn.microsoft - Create a client app that uses the DLL](https://learn.microsoft.com/en-us/cpp/build/walkthrough-creating-and-using-a-dynamic-link-library-cpp?view=msvc-170#create-a-client-app-that-uses-the-dll)


# C# Wrapper 
_Provided by DNR_


Wrapper for building your own launcher in C# with the Launcher SDK.

This uses the same `sirin-launcher.dll` but makes use of C#'s `DllImport("sirin-launcher.dll`

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RF_Launcher
{
  internal static class SirinResponseCodes
  {
      public const byte err_lulo_fail_timeout = 51;
      public const byte err_lulo_fail_not_authed = 52;
      public const byte err_lulo_2f_confirm_required = 53;
      public const byte err_lulo_fail_2f_code = 54;
      public const byte err_lulo_fail_internal_error = 55;
      ...
  }
}
```
> Source below (click to expand)
<details>
  <summary>SirinResponseCodes.cs
  
  </summary>

  ```csharp
  using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RF_Launcher
{
    internal static class SirinResponseCodes
    {
        public const byte err_lulo_fail_timeout = 51;
        public const byte err_lulo_fail_not_authed = 52;
        public const byte err_lulo_2f_confirm_required = 53;
        public const byte err_lulo_fail_2f_code = 54;
        public const byte err_lulo_fail_internal_error = 55;
        public const byte err_lulo_fail_data_error = 56;
        public const byte err_lulo_fail_incorrect_state = 57;
        public const byte err_lulo_fail_feature_disabled = 58;
        public const byte err_lulo_fail_closed = 59;
        public const byte err_lulo_fail_banned_hwid = 60;

        public const byte err_sirin_sdk_invalid_input = 100;
        public const byte err_sirin_sdk_invalid_language = 101;
        public const byte err_sirin_sdk_invalid_ip = 102;
        public const byte err_sirin_sdk_invalid_host_addr = 103;
        public const byte err_sirin_sdk_parse_packet_error = 104;
        public const byte err_sirin_sdk_send_failed = 105;
        public const byte err_sirin_sdk_wait_failed = 106;
        public const byte err_sirin_sdk_connect_login_failed = 107;
        public const byte err_sirin_sdk_send_wait_failed = 108;
        public const byte err_sirin_sdk_trying_connect = 109;

        public const byte err_result_msg_unicode = 255;
        public const byte err_result_msg_ascii = 254;
        public const byte err_result_connection_close = 253;
        public const byte err_result_update_param_value = 252;

        public const byte param_ban_remain = 1;
        public const byte param_chat_lock_remain = 2;
        public const byte param_billing_type = 3;
        public const byte param_billing_remain = 4;
        public const byte param_premium_remain = 5;
        public const byte param_cash_value = 6;
        public const byte param_2fa_status = 7;
        public const byte param_capture_status = 8;

        public const byte pt_lulo_register_req = 0;
        public const byte pt_lulo_register_rsp = 1;
        public const byte err_lulo_register_success = 0;
        public const byte err_lulo_register_fail_duplicate = 1;

        public const byte pt_lulo_auth_req = 2;
        public const byte pt_lulo_auth_rsp = 3;

        public const byte err_lulo_auth_success = 0;
        public const byte err_lulo_auth_fail_id_or_pass = 1;
        public const byte err_lulo_auth_fail_banned = 2;
        public const byte err_lulo_auth_capture_fail_id = 3;
        public const byte err_lulo_auth_capture_fail_permission = 4;

        public const byte pt_lulo_2f_auth_req = 4;
        public const byte pt_lulo_2f_auth_rsp = 5;
        public const byte err_lulo_2f_auth_success = 0;

        public const byte pt_lulo_2f_enable_req = 6;
        public const byte pt_lulo_2f_enable_rsp = 7;
        public const byte err_lulo_2f_enable_success = 0;
        public const byte err_lulo_2f_enable_fail_already_done = 1;

        public const byte pt_lulo_2f_untrust_req = 8;
        public const byte pt_lulo_2f_untrust_rsp = 9;
        public const byte err_lulo_2f_untrust_success = 0;
        public const byte err_lulo_2f_untrust_fail_2f_disabled = 1;

        public const byte pt_lulo_change_pass_req = 10;
        public const byte pt_lulo_change_pass_rsp = 11;
        public const byte err_lulo_change_pass_success = 0;
        public const byte err_lulo_change_pass_fail_wrong_pass = 1;

        public const byte pt_lulo_reset_pass_req = 12;
        public const byte pt_lulo_reset_pass_rsp = 13;
        public const byte err_lulo_reset_pass_success = 0;
        public const byte err_lulo_reset_pass_fail_wrong_id = 1;
        public const byte err_lulo_reset_pass_fail_2f_disabled = 2;

        public const byte pt_lulo_help_req = 14;
        public const byte pt_lulo_help_rsp = 15;
        public const byte err_lulo_help_success = 0;

        public const byte pt_lulo_enter_world_req = 16;
        public const byte pt_lulo_enter_world_rsp = 17;
        public const byte err_lulo_enter_world_success = 0;
        public const byte err_lulo_enter_world_fail_push_require = 1;
        public const byte err_lulo_enter_world_fail_gm_controlled = 2;
        public const byte err_lulo_enter_world_push_pending = 3;
        public const byte err_lulo_enter_world_push_close_wait = 4;
        public const byte err_lulo_enter_world_fail_max_online = 5;
        public const byte err_lulo_enter_world_fail_billing_end = 6;
    }
}
  ```
</details>

<details>
  <summary>SirinWrapper.cs
  
  </summary>

  ```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace RF_Launcher
{
    internal class SirinWrapper
    {
        public delegate void CallbackEventHandler(byte requestId, byte requestSubId, byte returnCode, IntPtr dataPointer);

        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_RegisterA([MarshalAs(UnmanagedType.LPStr)] string pszNewLogin,[MarshalAs(UnmanagedType.LPStr)] string pszNewPassword);

        /*Change account password request. ASCII ver.
        You MUST be logged in.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_ChangePasswordA([MarshalAs(UnmanagedType.LPStr)] string pszOldPassword, [MarshalAs(UnmanagedType.LPStr)] string pszNewPassword);

        /*Set address of callback handler function.
        arg1 - Request ID. Only 0 for now. New IDs may appear in future.
        arg2 - Request Sub ID.
        arg3 - Return code.qÂ§
        arg4 - Data pointer.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetHandler(CallbackEventHandler pCallbackHandler);

        /*Login account request. ASCII ver.
        You should NOT be logged in.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_LoginA([MarshalAs(UnmanagedType.LPStr)] string pszLogin, [MarshalAs(UnmanagedType.LPStr)] string pszPassword);

        /*Does not send any requests just closes active session.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_Logout();

        /*Set language for DefaultSet.tmp file*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetNation(byte byNation);

        /*Set IP address of login server. Network byte order.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetLoginIP(uint dwIP);

        /*Set Host address of login server. ASCII ver.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetLoginAddrA([MarshalAs(UnmanagedType.LPStr)] string pszAddr);

        /*Set Host address of login server. Unicode ver.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]

        public static extern void Sirin_SetLoginAddrW([MarshalAs(UnmanagedType.LPTStr)] string pwszAddr);

        /*Set Host port of login server. Host byte order.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetLoginPort(ushort wPort);

        /*Set IP address of zone server. Network byte order.
        This will override data provided by login server.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetZoneIP(uint dwIP);

        /*Set Host address of zone server. ASCII ver.
        This will override data provided by login server.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetZoneAddrA([MarshalAs(UnmanagedType.LPStr)] string pszAddr);

        /*Set Host address of zone server. Unicode ver.
        This will override data provided by login server.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetZoneAddrW([MarshalAs(UnmanagedType.LPTStr)] string pwszAddr);

        /*Set Host port of login server. Host byte order.
        This will override data provided by login server.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SetZonePort(ushort wPort);

        /*Enter world request.
        bPush - flag, to push out active session.
        bWithMyGMPermissions - flag, to force use YOUR account permissions, not captured one.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_EnterWorld(bool bPush = false, bool bWithMyGMPermissions = false);

        /*Turn second factor authentication on or off request.
        You MUST be logged in.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SecondFactorManage(bool bEnable);

        /*Send second factor authentication confirmation code.
        bTrustThisPC - flag, to trust this PC and not to request 2FA code in future. Applicable for login operations only.
        bCancel - flag, to cancel last pending confirmation operation. You MUST send cancel flag to be able send other commands.
        */
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SecondFactorConfirm(uint dwCode, bool bTrustThisPC, bool bCancel = false);

        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_SecondFactorConfirm(string dwCode, bool bTrustThisPC, bool bCancel = false);

        /*Remove this PC from trusted list.
        You MUST be logged in.
        1 remove current PC from trusted list
        2 remove all PCs from trusted list*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_UntrustPC(byte byType);

        /*Reset account password request. ASCII ver.
        You should NOT be logged in.*/
        [DllImport("sirin-launcher.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Sirin_ResetPasswordA([MarshalAs(UnmanagedType.LPStr)] string pszLogin, [MarshalAs(UnmanagedType.LPStr)] string pszNewPassword);
    }
}
  ```
</details>

<details>
  <summary>SirinSDK.cs
  
  </summary>

  ```csharp
using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using static RF_Launcher.SirinWrapper;

namespace RF_Launcher
{
    public struct SirinUserData
    {
        public uint m_byResult;
        public uint m_dwBanRemain;
        public uint m_dwChatLockRemain;
        public byte m_byBillingType;
        public uint m_dwBillingRemain;
        public uint m_dwPremiumRemain;
        public uint m_dwCashCoin;
        public bool m_n2FAStatus;
        public bool m_nIsCaptured;
    }
    internal class SirinAPI
    {
        static UserData userData;
        static IDictionary<byte, string> serverResponses = new Dictionary<byte, string>();
        static IDictionary<byte, string> registrationResponses = new Dictionary<byte, string>();
        static IDictionary<byte, string> loginResponses = new Dictionary<byte, string>();
        static IDictionary<byte, string> changePasswordResponses = new Dictionary<byte, string>();
        static IDictionary<byte, string> resetPasswordResponses = new Dictionary<byte, string>();
        static IDictionary<byte, string> enterWorldResponses = new Dictionary<byte, string>();

        private static CallbackEventHandler callbackDelegate;

        public delegate void OnMessageFiredEvent(string message);
        public static event OnMessageFiredEvent OnMessageFired;

        public delegate void OnLoggedOutEvent();
        public static event OnLoggedOutEvent OnLoggedOut;

        public delegate void OnLoggedInEvent();
        public static event OnLoggedInEvent OnLoggedIn;

        public delegate void OnSetup2FATriggeredEvent(string secret);
        public static event OnSetup2FATriggeredEvent OnSetup2FATriggered;

        public delegate void On2FAInputTriggeredEvent(bool b2FAAuthConfirmPending);
        public static event On2FAInputTriggeredEvent On2FAInputTriggered;

        public delegate void OnRegistrationSuccessfulEvent();
        public static event OnRegistrationSuccessfulEvent OnRegistrationSuccessful;

        public delegate void OnPasswordChangedEvent();
        public static event OnPasswordChangedEvent OnPasswordChanged;

        public delegate void OnResetPasswordSuccessEvent();
        public static event OnResetPasswordSuccessEvent OnResetPasswordSuccess;

        public delegate void On2FAEnabledEvent();
        public static event On2FAEnabledEvent On2FAEnabled;

        public static bool b2FAAuthConfirmPending { get; private set; }

        public SirinAPI()
        {
            userData = UserData.Instance;
            initialiseResponseDictionaries();
            configureSirin();
        }

        public void resetPassword(string username, string password)
        {
            SirinWrapper.Sirin_ResetPasswordA(username, password);
        }

        public void changePassword(string oldPassword, string newPassword)
        {
            SirinWrapper.Sirin_ChangePasswordA(oldPassword, newPassword);
        }

        public void register(string username, string password)
        {
            SirinWrapper.Sirin_RegisterA(username, password);
        }

        public void untrust2FADevice()
        {
            SirinWrapper.Sirin_UntrustPC(1);
        }

        public void untrustAll2FADevices()
        {
            SirinWrapper.Sirin_UntrustPC(2);
        }

        public void login(string username, string password)
        {
            SirinWrapper.Sirin_LoginA(username, password);
            userData.Username = username;
        }

        public void logout()
        {
            SirinWrapper.Sirin_Logout();
            OnLoggedOut();
        }

        public void launch()
        {
            SirinWrapper.Sirin_EnterWorld(false, false);
        }

        public void manage2FA(bool enable)
        {
            SirinWrapper.Sirin_SecondFactorManage(enable);
        }

        public void _2FAConfirm(uint dwCode, bool trustThisPC, bool cancel)
        {
            SirinWrapper.Sirin_SecondFactorConfirm(dwCode, trustThisPC, cancel);
        }

        public void _2FACancel(string dwCode, bool trustThisPC, bool cancel)
        {
            SirinWrapper.Sirin_SecondFactorConfirm("", trustThisPC, cancel);
        }

        private void configureSirin()
        {
            callbackDelegate = new CallbackEventHandler(callbackHandler);
            SirinWrapper.Sirin_SetHandler(callbackDelegate);
            SirinWrapper.Sirin_SetLoginAddrA("YOUR IP");
            SirinWrapper.Sirin_SetLoginPort(10001);
            SirinWrapper.Sirin_SetZoneAddrA("YOUR IP");
            SirinWrapper.Sirin_SetZonePort(27780);
            SirinWrapper.Sirin_SetNation(3);
        }

        public static void callbackHandler(byte type, byte requestSubId, byte returnCode, IntPtr dataPointer)
        {
            bool serverError = handleServerErrors(returnCode, dataPointer);
            if (serverError) return;

            bool dataUpdate = handleUserStateChanged(returnCode, requestSubId, dataPointer);
            if (dataUpdate) return;

            bool requestError = handleRequestErrors(returnCode);
            if  (requestError) return;

            bool _2FAResponse = handle2FAResponse(returnCode, requestSubId, dataPointer);
            if (_2FAResponse) return;

            bool _2FATrustResponse = handle2FATrustResponse(returnCode, requestSubId);
            if (_2FATrustResponse) return;

            bool changePasswordResponse = handleChangePasswordResponse(returnCode, requestSubId);
            if (changePasswordResponse) return;

            bool resetPasswordResponse = handleResetPasswordResponse(returnCode, requestSubId);
            if (resetPasswordResponse) return;

            bool noHandleForNonZeroTypes = handleUncaughtNonZeroTypes(type);
            if (noHandleForNonZeroTypes) return;

            bool registrationResponse = handleRegistrationResponse(returnCode, requestSubId);
            if (registrationResponse) return;

            bool loginResponse = handleLoginResponse(returnCode, requestSubId);
            if (loginResponse) return;

            bool _2FAToggleResponse = handle2FAToggleResponse(returnCode, requestSubId);
            if (_2FAToggleResponse) return;

            bool enterWorldResponse = handleEnterWorldResponse(returnCode, requestSubId);
            if (enterWorldResponse) return;

            OnMessageFired($"returnCode {returnCode}, subCode {requestSubId}");
            return;
        }

        private static bool handleResetPasswordResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_reset_pass_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_reset_pass_success)
                {
                    OnResetPasswordSuccess();
                    OnMessageFired(resetPasswordResponses[returnCode]);
                    return true;
                }
                if (resetPasswordResponses.ContainsKey(returnCode))
                {
                    OnMessageFired(resetPasswordResponses[returnCode]);
                    return true;
                }
                OnMessageFired($"Response was not identified by client, 2FA is probably not enabled");
                return true;
            }
            return false;
        }

        private static bool handle2FATrustResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_2f_untrust_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_2f_untrust_success)
                {
                    OnMessageFired("Trusted device/s removed successfully.");
                    return true;
                }
                if (returnCode == SirinResponseCodes.err_lulo_2f_untrust_fail_2f_disabled)
                {
                    OnMessageFired("Could not remove trusted device, 2FA may not be enabled");
                    return true;
                }
                OnMessageFired("Response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handleEnterWorldResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_enter_world_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_enter_world_success)
                {
                    App.exit();
                    return true;
                }
                if (enterWorldResponses.ContainsKey(returnCode))
                {
                    OnMessageFired(enterWorldResponses[returnCode]);
                    return true;
                }
                OnMessageFired("Response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handleChangePasswordResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_change_pass_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_change_pass_success)
                {
                    OnMessageFired("Password update successful");
                    OnPasswordChanged();
                    return true;
                }
                if (changePasswordResponses.ContainsKey(returnCode))
                {
                    OnMessageFired(changePasswordResponses[returnCode]);
                    return true;
                }
                OnMessageFired("Password change response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handle2FAToggleResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_2f_enable_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_2f_enable_success)
                {
                    if (userData._2FAStatus)
                    {
                        On2FAEnabled();
                        OnMessageFired("2FA Enabled");
                        return true;
                    }
                    OnMessageFired("2FA Disabled, all trusted devices removed");
                    return true;
                }
                if (returnCode == SirinResponseCodes.err_lulo_2f_enable_fail_already_done)
                {
                    OnMessageFired("2FA is already enabled on this account");
                    return true;
                }
                OnMessageFired("2FA response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handleLoginResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_auth_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_auth_success)
                {
                    b2FAAuthConfirmPending = false;
                    OnLoggedIn();
                    return true;
                }
                if (loginResponses.ContainsKey(returnCode))
                {
                    OnMessageFired(loginResponses[returnCode]);
                    return true;
                }
                OnMessageFired("login response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handleRegistrationResponse(byte returnCode, byte requestSubId)
        {
            if (requestSubId == SirinResponseCodes.pt_lulo_register_rsp)
            {
                if (returnCode == SirinResponseCodes.err_lulo_register_success)
                {
                    OnMessageFired("Registration Successful!");
                    OnRegistrationSuccessful();
                    return true;
                }
                if (registrationResponses.ContainsKey(returnCode))
                {
                    OnMessageFired(registrationResponses[returnCode]);
                    return true;
                }
                OnMessageFired("Registration response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handleUncaughtNonZeroTypes(byte type)
        {
            if (type != 0)
            {
                OnMessageFired("Response was not identified by client");
                return true;
            }
            return false;
        }

        private static bool handle2FAResponse(byte returnCode, byte requestSubId, IntPtr dataPointer)
        {
            if (returnCode == SirinResponseCodes.err_lulo_2f_confirm_required)
            {
                if (requestSubId == SirinResponseCodes.pt_lulo_2f_enable_rsp && userData._2FAStatus == false)
                {
                    b2FAAuthConfirmPending = false;
                    string secret = (string)Marshal.PtrToStringAnsi(dataPointer);
                    OnSetup2FATriggered(secret);
                    return true;
                }
                if (requestSubId == SirinResponseCodes.pt_lulo_auth_rsp)
                {
                    b2FAAuthConfirmPending = true;
                }
                else
                {
                    b2FAAuthConfirmPending = false;
                }

                On2FAInputTriggered(b2FAAuthConfirmPending);
                return true;
            }
            if (returnCode == SirinResponseCodes.err_lulo_fail_2f_code)
            {
                OnMessageFired("2FA code incorrect");
                On2FAInputTriggered(b2FAAuthConfirmPending);
                return true;
            }
            return false;
        }

        private static bool handleRequestErrors(byte returnCode)
        {
            if (serverResponses.ContainsKey(returnCode))
            {
                OnMessageFired(serverResponses[returnCode]);
                return true;
            }
            return false;
        }

        private static bool handleUserStateChanged(byte returnCode, byte requestSubId, IntPtr dataPointer)
        {
            if (returnCode == SirinResponseCodes.err_result_update_param_value)
            {
                switch (requestSubId)
                {
                    case SirinResponseCodes.param_2fa_status:
                        byte _2faStatus = (byte)Marshal.ReadByte(dataPointer);
                        if (_2faStatus == 0)
                        {
                            userData._2FAStatus = false;
                        }
                        else
                        {
                            userData._2FAStatus = true;
                        }
                        return true;
                    case SirinResponseCodes.param_ban_remain:
                        userData.BanRemaining = (uint)Marshal.ReadInt32(dataPointer);
                        return true;
                    case SirinResponseCodes.param_billing_remain:
                        userData.BillingRemaining = (uint)Marshal.ReadInt32(dataPointer);
                        return true;
                    case SirinResponseCodes.param_billing_type:
                        userData.BillingType = (byte)Marshal.ReadByte(dataPointer);
                        return true;
                    case SirinResponseCodes.param_capture_status:
                        byte captureStatus = (byte)Marshal.ReadByte(dataPointer);
                        if (captureStatus == 0)
                        {
                            userData.IsCaptured = false;
                        }
                        else
                        {
                            userData.IsCaptured = true;
                        }
                        return true;
                    case SirinResponseCodes.param_cash_value:
                        userData.CashShopBalance = (uint)Marshal.ReadInt32(dataPointer);
                        return true;
                    case SirinResponseCodes.param_chat_lock_remain:
                        userData.ChatLockRemaining = (uint)Marshal.ReadInt32(dataPointer);
                        return true;
                    case SirinResponseCodes.param_premium_remain:
                        userData.PremiumRemaining = (uint)Marshal.ReadInt32(dataPointer);
                        return true;
                    default:
                        OnMessageFired("State update was unhandled");
                        return true;
                }
            }
            return false;
        }

        private static bool handleServerErrors(byte returnCode, IntPtr dataPointer)
        {
            if (returnCode == SirinResponseCodes.err_result_msg_unicode)
            {
                string error = dataPointer.ToString();
                OnMessageFired(error);
                return true;
            }
            if (returnCode == SirinResponseCodes.err_result_msg_ascii)
            {
                string error = dataPointer.ToString();
                OnMessageFired(error);
                return true;
            }
            if (returnCode == SirinResponseCodes.err_result_connection_close)
            {
                SirinWrapper.Sirin_Logout();
                OnLoggedOut();
                return true;
            }
            return false;
        }

        private static void initialiseResponseDictionaries()
        {
            serverResponses.Add(51, "Too many requests!");
            serverResponses.Add(52, "Authentication required!");
            serverResponses.Add(55, "Internal error!");
            serverResponses.Add(56, "Invalid input data!");
            serverResponses.Add(57, "Invalid state to use this operation!");
            serverResponses.Add(58, "Feature disabled!");
            serverResponses.Add(59, "Request fail! Login closed.");
            serverResponses.Add(60, "Request fail! Computer banned.");

            registrationResponses.Add(1, "Registration failed, duplicate username.");

            loginResponses.Add(0, "Login Successful");
            loginResponses.Add(1, "Login fail! Wrong login and/or password.");
            loginResponses.Add(2, "Login fail! Account banned.");
            loginResponses.Add(3, "Login fail! Capturing account not found.");
            loginResponses.Add(4, "Login fail! Account capture not permitted.");

            changePasswordResponses.Add(0, "Password changed successfully.");
            changePasswordResponses.Add(1, "Incorrect current password.");

            resetPasswordResponses.Add(0, "Password reset successful");
            resetPasswordResponses.Add(1, "Password reset failed: Could not find login");
            resetPasswordResponses.Add(2, "Password reset failed: 2FA not enabled on account.");

            enterWorldResponses.Add(2, "Enter world fail! Account captured by GM.");
            enterWorldResponses.Add(3, "Push fail! Push operation already in progress.");
            enterWorldResponses.Add(4, "Push connection success!");
            enterWorldResponses.Add(5, "Enter world fail! Max server online reached.");
        }
    }
}
```
</details>