.class public Lcom/android/nfc/beam/BeamSendService;
.super Landroid/app/Service;
.source "BeamSendService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "BeamSendService"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    .line 37
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    .line 36
    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/android/nfc/beam/BeamSendService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamSendService$1;-><init>(Lcom/android/nfc/beam/BeamSendService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private static final enableNoAutoConnect_aroundBody4(Lcom/android/nfc/beam/BeamSendService;Landroid/bluetooth/BluetoothAdapter;)Z
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0
.end method

.method private static final enableNoAutoConnect_aroundBody5$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "target"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ABluetoothPowerStatus;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 20
    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$DBG()Z

    move-result v0

    const-string v1, "AHandoverPowerStatus.aj"

    const-string v2, "around() :call(* BluetoothAdapter.enableNoAutoConnect(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 154
    const/high16 v2, -0x80000000

    .line 153
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1e

    .line 156
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_1d

    .line 157
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    iget v1, v1, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_1d

    .line 158
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 163
    :cond_1d
    :goto_1d
    return-void

    .line 160
    :cond_1e
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1d

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    goto :goto_1d
.end method

.method private static final init$_aroundBody6(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 6

    .prologue
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    .line 147
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    return-object v0
.end method

.method private static final init$_aroundBody7$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/android/nfc/beam/ABeamTransferManager;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 25

    .prologue
    .line 24
    move-object v3, p0

    .local v3, "ajc$this":Lcom/android/nfc/beam/BeamSendService;
    move-object v4, p1

    .local v4, "context":Landroid/content/Context;
    move-object/from16 v5, p2

    .local v5, "callback":Lcom/android/nfc/beam/BeamTransferManager$Callback;
    move-object/from16 v6, p3

    .local v6, "pendingTransfer":Lcom/android/nfc/beam/BeamTransferRecord;
    move/from16 v7, p4

    .local v7, "incoming":Z
    move-object/from16 v8, p5

    .local v8, "ajc$aspectInstance":Lcom/android/nfc/beam/ABeamTransferManager;
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v13, p10

    .local v13, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$DBG()Z

    move-result v0

    const-string v1, "ABeamTransferManager.aj"

    const-string v2, "around() :call(* BeamTransferManager.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/android/nfc/beam/LBeamTransferManager;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/nfc/beam/LBeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    return-object v0
.end method

.method private invokeCompleteCallback(Z)V
    .registers 7
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_15

    .line 168
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 169
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 175
    .end local v1    # "msg":Landroid/os/Message;
    :cond_15
    :goto_15
    return-void

    .line 171
    :catch_16
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static final onCreate_aroundBody0(Lcom/android/nfc/beam/BeamSendService;)V
    .registers 3
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamSendService;

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private static final onCreate_aroundBody1$advice(Lcom/android/nfc/beam/BeamSendService;Lcom/android/nfc/beam/ABeamService;Lcom/android/nfc/beam/BeamSendService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "ajc$aspectInstance"    # Lcom/android/nfc/beam/ABeamService;
    .param p2, "service"    # Lcom/android/nfc/beam/BeamSendService;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 16
    invoke-static {p1, p2}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;Landroid/content/Context;)V

    .line 17
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamSendService.onCreate(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$initService(Landroid/content/Context;)V

    .line 19
    invoke-static {p2}, Lcom/android/nfc/beam/BeamSendService;->onCreate_aroundBody0(Lcom/android/nfc/beam/BeamSendService;)V

    .line 20
    return-void
.end method

.method private static final onStartCommand_aroundBody2(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;II)I
    .registers 7
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    .line 85
    iput p3, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    .line 88
    if-eqz p1, :cond_f

    .line 89
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    if-nez v0, :cond_1f

    .line 90
    :cond_f
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "No transfer record provided. Stopping."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    move v0, v2

    .line 103
    :goto_1e
    return v0

    .line 95
    :cond_1f
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 98
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "Starting outgoing Beam transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3a
    const/4 v0, 0x1

    goto :goto_1e

    .line 101
    :cond_3c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 102
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    move v0, v2

    .line 103
    goto :goto_1e
.end method

.method private static final onStartCommand_aroundBody3$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;IILcom/android/nfc/beam/ABeamService;Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 20

    .prologue
    .line 30
    move-object v2, p0

    .local v2, "ajc$this":Lcom/android/nfc/beam/BeamSendService;
    move-object v3, p1

    .local v3, "intent":Landroid/content/Intent;
    move v4, p2

    .local v4, "flags":I
    move v5, p3

    .local v5, "startId":I
    move-object v6, p4

    .local v6, "ajc$aspectInstance":Lcom/android/nfc/beam/ABeamService;
    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v10, p8

    .local v10, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamSendService.onStartCommand(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v6}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    invoke-static {v2, v3, v4, v5}, Lcom/android/nfc/beam/BeamSendService;->onStartCommand_aroundBody2(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 13
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v0, :cond_6

    .line 149
    :cond_5
    :goto_5
    return v4

    .line 141
    :cond_6
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_5

    .line 147
    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->aspectOf()Lcom/android/nfc/beam/ABeamTransferManager;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/beam/BeamSendService;->init$_aroundBody7$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/android/nfc/beam/ABeamTransferManager;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 148
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 149
    const/4 v4, 0x1

    goto :goto_5
.end method

.method doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 9
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 110
    new-instance v2, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v2, p0, v3}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 111
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v3}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 112
    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 111
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v3, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v2, v3, :cond_37

    .line 115
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 117
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    :cond_37
    :goto_37
    move v0, v1

    .line 133
    :cond_38
    :goto_38
    return v0

    .line 120
    :cond_39
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->aspectOf()Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    move-result-object v3

    invoke-static {p0, v2, v3, v2, v6}, Lcom/android/nfc/beam/BeamSendService;->enableNoAutoConnect_aroundBody5$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 121
    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v6, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    goto :goto_38

    .line 125
    :cond_4f
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 126
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queueing out transfer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget v3, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/beam/ABeamService;->aspectOf()Lcom/android/nfc/beam/ABeamService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p0, v1}, Lcom/android/nfc/beam/BeamSendService;->onCreate_aroundBody1$advice(Lcom/android/nfc/beam/BeamSendService;Lcom/android/nfc/beam/ABeamService;Lcom/android/nfc/beam/BeamSendService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/beam/ABeamService;->aspectOf()Lcom/android/nfc/beam/ABeamService;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/nfc/beam/BeamSendService;->onStartCommand_aroundBody3$advice(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;IILcom/android/nfc/beam/ABeamService;Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    return v0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .registers 6
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 180
    if-nez p2, :cond_20

    .line 181
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transfer failed, final state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_20
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_2c

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 187
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 190
    :cond_2c
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 191
    iget v0, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 192
    return-void
.end method
