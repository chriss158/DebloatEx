.class public Lcom/android/nfc/handover/LHandoverPopupList;
.super Ljava/lang/Object;
.source "LHandoverPopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_HEADSET_CONFIRMPOPUP_NEGATIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

.field private static final ACTION_HEADSET_CONFIRMPOPUP_POSITIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

.field private static final ACTION_HEADSET_POPUP_NEGATIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_popup_negative"

.field private static final ACTION_HEADSET_POPUP_POSITIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_popup_positive"

.field private static final EXTRA_CALLBACK_MESSAGE:Ljava/lang/String; = "callback"

.field private static final TAG:Ljava/lang/String; = "LHandoverPopupList"


# instance fields
.field private final mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

.field private final mLReceiver:Landroid/content/BroadcastReceiver;

.field private final mMsg:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    .param p3, "msg"    # Landroid/os/Parcelable;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/android/nfc/handover/LHandoverPopupList$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LHandoverPopupList$1;-><init>(Lcom/android/nfc/handover/LHandoverPopupList;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 49
    iput-object p2, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    .line 50
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList;
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/handover/LHandoverPopupList;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/handover/LHandoverPopupList;Landroid/os/Parcelable;)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/handover/LHandoverPopupList;
    .param p1, "arg1"    # Landroid/os/Parcelable;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/LHandoverPopupList;->makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/handover/LHandoverPopupList;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    return-object v0
.end method

.method private makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x0

    .line 136
    const-string v4, "LHandoverPopupList"

    const-string v5, "makeConfirmPopupDialogIntent"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "positiveIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "negativeIntent":Landroid/content/Intent;
    const-string v4, "callback"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v4, "callback"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverPopupList;->registerIntentFilter()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "bintent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    new-instance v4, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 148
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v6, 0x7f080038

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 149
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v6, 0x7f080030

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 150
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v7, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 151
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v7, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 152
    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 153
    const v5, 0x7f080018

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 154
    invoke-virtual {v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v2

    .line 155
    .local v2, "popupInfor":Lcom/android/nfc/utils/LNfcPopupInformation;
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method


# virtual methods
.method public ajc$privMethod$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_handover_LHandoverPopupList$requestConnectWifiDeviceConfirmation(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/LHandoverPopupList;->requestConnectWifiDeviceConfirmation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method registerIntentFilter()V
    .registers 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method requestConnectBluetoothDeviceConfirmation()Z
    .registers 6

    .prologue
    .line 79
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "popupTitle":Ljava/lang/String;
    const-string v1, ""

    .line 81
    .local v1, "popupMessage":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 82
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_13

    .line 83
    const/4 v3, 0x0

    .line 91
    :goto_12
    return v3

    .line 85
    :cond_13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 86
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    :goto_22
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/LHandoverPopupList;->requestHandoverConfirmation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_12

    .line 88
    :cond_27
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v4, 0x7f08002b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method

.method requestConnectWifiDeviceConfirmation(Ljava/lang/String;)Z
    .registers 10
    .param p1, "apName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 68
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_f

    move v4, v5

    .line 75
    :goto_e
    return v4

    .line 72
    :cond_f
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 73
    .local v0, "isEnabled":Z
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v6, 0x7f08002c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    const v4, 0x7f08002d

    :goto_23
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/LHandoverPopupList;->requestHandoverConfirmation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_e

    .line 74
    .end local v1    # "message":Ljava/lang/String;
    :cond_31
    const v4, 0x7f08002e

    goto :goto_23
.end method

.method requestHandoverConfirmation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    const-string v7, "LHandoverPopupList"

    const-string v8, "requestHandoverConfirmation"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 98
    .local v2, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_26

    .line 99
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v7

    if-nez v7, :cond_17

    .line 132
    :cond_16
    :goto_16
    return v5

    .line 103
    :cond_17
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 104
    const/16 v7, 0x65

    invoke-virtual {v2, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 110
    :cond_26
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverPopupList;->registerIntentFilter()V

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "negativeIntent":Landroid/content/Intent;
    const-string v7, "callback"

    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v4, "positiveIntent":Landroid/content/Intent;
    const-string v7, "callback"

    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v3, "popupIntent":Landroid/content/Intent;
    const-string v7, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const v7, 0x10008000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    new-instance v7, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 122
    invoke-virtual {v7, p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 123
    invoke-virtual {v7, p2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 124
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v5, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 125
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v5, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    .line 126
    const v7, 0x7f080017

    invoke-virtual {v5, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    .line 127
    const v7, 0x7f080018

    invoke-virtual {v5, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 129
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    const-string v5, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 132
    goto :goto_16
.end method

.method unregisterIntentFilter()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method
