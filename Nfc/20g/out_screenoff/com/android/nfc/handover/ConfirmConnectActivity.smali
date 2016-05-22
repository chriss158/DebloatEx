.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mAlert:Landroid/app/AlertDialog;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 29
    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;ILcom/android/nfc/handover/AConfirmConnectActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 17

    .prologue
    .line 24
    move-object v3, p0

    .local v3, "ajc$this":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object v4, p1

    .local v4, "context":Landroid/content/Context;
    move v5, p2

    .local v5, "themeResId":I
    move-object v6, p3

    .local v6, "ajc$aspectInstance":Lcom/android/nfc/handover/AConfirmConnectActivity;
    move-object v4, p4

    move v8, p5

    .local v8, "theme":I
    move-object/from16 v9, p6

    .local v9, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/handover/AConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_AConfirmConnectActivity$com_android_nfc_handover_AConfirmConnectActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final setMessage_aroundBody2(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 45
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setMessage_aroundBody3$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Lcom/android/nfc/handover/AConfirmConnectActivity;Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 18

    .prologue
    .line 30
    move-object v4, p0

    .local v4, "ajc$this":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object v5, p1

    .local v5, "target":Landroid/app/AlertDialog$Builder;
    move-object v6, p2

    .local v6, "message":Ljava/lang/CharSequence;
    move-object v7, p3

    .local v7, "ajc$aspectInstance":Lcom/android/nfc/handover/AConfirmConnectActivity;
    move-object v8, p4

    .local v8, "activity":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object/from16 v6, p5

    move-object/from16 v10, p6

    .local v10, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/handover/AConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_AConfirmConnectActivity$com_android_nfc_handover_AConfirmConnectActivity$DBG()Z

    move-result v1

    const-string v2, "AConfirmConnectActivity.aj"

    const-string v3, "around() : call(* AlertDialog.Builder.setMessage(CharSequence))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v8}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/android/nfc/handover/ConfirmConnectActivity;->setMessage_aroundBody2(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v2, 0x5

    invoke-static {}, Lcom/android/nfc/handover/AConfirmConnectActivity;->aspectOf()Lcom/android/nfc/handover/AConfirmConnectActivity;

    move-result-object v3

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/handover/ConfirmConnectActivity;->init$_aroundBody1$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;ILcom/android/nfc/handover/AConfirmConnectActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 38
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 39
    .local v8, "launchIntent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 41
    :cond_27
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 42
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "deviceName":Ljava/lang/String;
    :goto_39
    const v0, 0x7f080016

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v10

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "confirmString":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/AConfirmConnectActivity;->aspectOf()Lcom/android/nfc/handover/AConfirmConnectActivity;

    move-result-object v3

    move-object v0, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/handover/ConfirmConnectActivity;->setMessage_aroundBody3$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Lcom/android/nfc/handover/AConfirmConnectActivity;Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    const v3, 0x7f080017

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    new-instance v4, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    .line 47
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const v3, 0x7f080018

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v4, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    .line 57
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 68
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 69
    return-void

    .line 42
    .end local v2    # "confirmString":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    :cond_83
    const-string v7, ""

    goto :goto_39
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 74
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1d

    .line 75
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "denyIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    .end local v0    # "denyIntent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method
