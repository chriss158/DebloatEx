.class public Lcom/android/nfc/handover/LPeripheralHandoverService;
.super Lcom/android/nfc/handover/PeripheralHandoverService;
.source "LPeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/LHandoverPopupList$Callback;


# static fields
.field protected static final PREF:Ljava/lang/String; = "NfcHandoverPrefs"

.field protected static final PREF_BLUETOOTHPOWERSTATE:Ljava/lang/String; = "BluetooothPowerState"

.field protected static final PREF_HEADSETCONNECT:Ljava/lang/String; = "BluetoothHeadsetConnect"

.field static final TAG:Ljava/lang/String; = "LPeripheralHandoverService"


# instance fields
.field mContext:Landroid/content/Context;

.field mLHandoverService:Lcom/android/nfc/handover/LPeripheralHandoverService;

.field private mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

.field mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;-><init>()V

    return-void
.end method


# virtual methods
.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "msgData"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v1, "PopupDialogType"

    .line 66
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 65
    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 66
    if-eqz v1, :cond_35

    .line 67
    iget-object v1, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_35

    .line 68
    iget-object v1, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "BluetoothHeadsetConnect"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, "isConnect":Z
    if-nez v0, :cond_31

    new-instance v1, Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/nfc/handover/LHandoverPopupList;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V

    :goto_1e
    iput-object v1, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 71
    iget-object v1, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverPopupList;->requestConnectBluetoothDeviceConfirmation()Z

    move-result v1

    if-nez v1, :cond_33

    .line 72
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v1

    .line 78
    .end local v0    # "isConnect":Z
    :goto_30
    return v1

    .line 69
    .restart local v0    # "isConnect":Z
    :cond_31
    const/4 v1, 0x0

    goto :goto_1e

    .line 74
    :cond_33
    const/4 v1, 0x1

    goto :goto_30

    .line 78
    .end local v0    # "isConnect":Z
    :cond_35
    invoke-super {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_30
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "BluetoothHeadsetConnect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    :cond_14
    invoke-super {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mStartId:I

    .line 90
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->onCreate()V

    .line 43
    const-string v0, "NfcHandoverPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/handover/LPeripheralHandoverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 53
    :cond_10
    :goto_10
    return-void

    .line 48
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_10

    goto :goto_10
.end method

.method public onHandoverPopupCallback(IZLandroid/os/Parcelable;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "result"    # Z
    .param p3, "msgData"    # Landroid/os/Parcelable;

    .prologue
    .line 94
    if-eqz p2, :cond_c

    .line 95
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 96
    check-cast p3, Landroid/os/Bundle;

    .end local p3    # "msgData":Landroid/os/Parcelable;
    invoke-super {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    .line 101
    :cond_b
    :goto_b
    return-void

    .line 99
    .restart local p3    # "msgData":Landroid/os/Parcelable;
    :cond_c
    iget v0, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LPeripheralHandoverService;->stopSelf(I)V

    goto :goto_b
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 59
    .local v0, "ret":I
    iput p3, p0, Lcom/android/nfc/handover/LPeripheralHandoverService;->mStartId:I

    .line 60
    return v0
.end method
