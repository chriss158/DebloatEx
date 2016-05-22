.class public Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final ENABLE_WIFI_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mEnableWifiInProgress:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    new-instance v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "arg1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 1
    .param p0, "arg0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    return-void
.end method

.method public static ajc$get$mAlertDialog(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public static ajc$set$mAlertDialog(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static ajc$set$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private static final connect_aroundBody8(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private static final connect_aroundBody9$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;ILandroid/net/wifi/WifiManager$ActionListener;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 12
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "target"    # Landroid/net/wifi/WifiManager;
    .param p2, "networkId"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .param p5, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p6, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "ssid":Ljava/lang/String;
    invoke-static {p4}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 133
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v2

    const-string v3, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v4, "around() : call(LGMDM_checkDisabledWifiConnection())"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 136
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 136
    invoke-interface {v2, v1, v0, v3}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_4b

    .line 142
    :goto_4a
    return-void

    .line 141
    :cond_4b
    invoke-static {p5, p1, p2, p3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->connect_aroundBody8(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_4a
.end method

.method private static final create_aroundBody2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final create_aroundBody3$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .registers 9
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "target"    # Landroid/app/AlertDialog$Builder;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.create())"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f080018

    invoke-virtual {p3, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const v1, 0x7f080017

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-static {p0, p3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->create_aroundBody2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private doConnect(Landroid/net/wifi/WifiManager;)V
    .registers 9
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 94
    .local v2, "networkId":I
    if-gez v2, :cond_13

    .line 95
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_24

    .line 113
    :goto_b
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$after$com_android_nfc_AConfirmConnectToWifiNetworkActivity$5$3166bff3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V

    return-void

    .line 99
    :cond_13
    :try_start_13
    new-instance v3, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    invoke-direct {v3, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->connect_aroundBody9$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;ILandroid/net/wifi/WifiManager$ActionListener;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_b

    .line 113
    .end local v2    # "networkId":I
    :catch_24
    move-exception v0

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$after$com_android_nfc_AConfirmConnectToWifiNetworkActivity$5$3166bff3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V

    throw v0
.end method

.method private getAndClearEnableWifiInProgress()Z
    .registers 3

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 158
    .local v0, "enableWifiInProgress":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 156
    monitor-exit p0

    .line 161
    return v0

    .line 156
    .end local v0    # "enableWifiInProgress":Z
    :catchall_8
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/content/Context;ILcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 17

    .prologue
    .line 63
    move-object v3, p0

    .local v3, "ajc$this":Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    move-object v4, p1

    .local v4, "context":Landroid/content/Context;
    move v5, p2

    .local v5, "themeResId":I
    move-object v6, p3

    .local v6, "ajc$aspectInstance":Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    move-object v4, p4

    move v8, p5

    .local v8, "theme":I
    move-object/from16 v9, p6

    .local v9, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.new())"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final setOnClickListener_aroundBody6(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setOnClickListener_aroundBody7$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "target"    # Landroid/widget/Button;
    .param p2, "l"    # Landroid/view/View$OnClickListener;
    .param p3, "ajc$aspectInstance"    # Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .param p4, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p5, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 109
    const-string v0, "PopupDialogType"

    .line 110
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 109
    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 110
    if-nez v0, :cond_e

    .line 111
    invoke-static {p4, p1, p2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->setOnClickListener_aroundBody6(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 116
    :goto_d
    return-void

    .line 114
    :cond_e
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : alertDialog_setOnClickListener() - bypass AlertDialog.setOnClickListener(), run onClick - for vzw UX scenario "

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->onClick(Landroid/view/View;)V

    goto :goto_d
.end method

.method private showFailToast()V
    .registers 3

    .prologue
    .line 117
    .line 118
    const v0, 0x7f080022

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method

.method private static final show_aroundBody4(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog;)V
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final show_aroundBody5$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "target"    # Landroid/app/AlertDialog;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .param p3, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 99
    const-string v0, "PopupDialogType"

    .line 100
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 99
    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 100
    if-nez v0, :cond_e

    .line 101
    invoke-static {p3, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->show_aroundBody4(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog;)V

    .line 105
    :goto_d
    return-void

    .line 104
    :cond_e
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : alertDialog_show() - bypass AlertDialog.show() - for vzw UX scenario"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 68
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_33

    .line 70
    invoke-static {v0, v2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$if$480a8fec(Landroid/net/wifi/WifiManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$before$com_android_nfc_AConfirmConnectToWifiNetworkActivity$4$84183156(Landroid/net/wifi/WifiManager;Z)V

    :cond_1c
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 71
    iput-boolean v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 73
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 81
    const-wide/16 v4, 0x1388

    .line 73
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_2d
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    return-void

    .line 84
    :cond_33
    invoke-direct {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 30
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$before$com_android_nfc_AConfirmConnectToWifiNetworkActivity$1$8bfebad2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 32
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 31
    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 34
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, "printableSsid":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v3

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->init$_aroundBody1$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/content/Context;ILcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    aput-object v9, v2, v10

    .line 40
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    const v1, 0x7f080021

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v6}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->create_aroundBody3$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 47
    iput-boolean v10, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {p0, v0, v1, p0, v6}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->show_aroundBody5$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/app/AlertDialog;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v4

    move-object v1, p0

    move-object v3, p0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->setOnClickListener_aroundBody7$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    if-nez v0, :cond_7

    .line 124
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 126
    :cond_7
    return-void
.end method
