.class public Lcom/android/nfc/beam/BeamReceiveService;
.super Landroid/app/Service;
.source "BeamReceiveService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

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
    .line 21
    const-string v0, "BeamReceiveService"

    sput-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/android/nfc/beam/BeamReceiveService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamReceiveService$1;-><init>(Lcom/android/nfc/beam/BeamReceiveService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/beam/BeamReceiveService;Z)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "arg1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    return-void
.end method

.method private static final enableNoAutoConnect_aroundBody4(Lcom/android/nfc/beam/BeamReceiveService;Landroid/bluetooth/BluetoothAdapter;)Z
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0
.end method

.method private static final enableNoAutoConnect_aroundBody5$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamReceiveService;
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

.method private static final init$_aroundBody6(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 6

    .prologue
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    .line 121
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    return-object v0
.end method

.method private static final init$_aroundBody7$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/android/nfc/beam/ABeamTransferManager;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 25

    .prologue
    .line 24
    move-object v3, p0

    .local v3, "ajc$this":Lcom/android/nfc/beam/BeamReceiveService;
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

    .line 134
    iget-object v3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_15

    .line 136
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 138
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 143
    .end local v1    # "msg":Landroid/os/Message;
    :cond_15
    :goto_15
    return-void

    .line 139
    :catch_16
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static final onCreate_aroundBody2(Lcom/android/nfc/beam/BeamReceiveService;)V
    .registers 3
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamReceiveService;

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private static final onCreate_aroundBody3$advice(Lcom/android/nfc/beam/BeamReceiveService;Lcom/android/nfc/beam/ABeamService;Lcom/android/nfc/beam/BeamReceiveService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "ajc$aspectInstance"    # Lcom/android/nfc/beam/ABeamService;
    .param p2, "service"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;Landroid/content/Context;)V

    .line 24
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamReceiveService.onCreate(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$initService(Landroid/content/Context;)V

    .line 26
    invoke-static {p2}, Lcom/android/nfc/beam/BeamReceiveService;->onCreate_aroundBody2(Lcom/android/nfc/beam/BeamReceiveService;)V

    .line 27
    return-void
.end method

.method private static final onStartCommand_aroundBody0(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Intent;II)I
    .registers 7
    .param p0, "ajc$this"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    .line 57
    iput p3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    .line 60
    if-eqz p1, :cond_f

    .line 61
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    if-nez v0, :cond_1f

    .line 62
    :cond_f
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v1, "No transfer record provided. Stopping."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    move v0, v2

    .line 75
    :goto_1e
    return v0

    .line 67
    :cond_1f
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 70
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v1, "Ready for incoming Beam transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3a
    const/4 v0, 0x1

    goto :goto_1e

    .line 73
    :cond_3c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 74
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    move v0, v2

    .line 75
    goto :goto_1e
.end method

.method private static final onStartCommand_aroundBody1$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Intent;IILcom/android/nfc/beam/ABeamService;Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 20

    .prologue
    .line 35
    move-object v2, p0

    .local v2, "ajc$this":Lcom/android/nfc/beam/BeamReceiveService;
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

    const-string v1, "pointcut around() : execution(BeamReceiveService.onStartCommand(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v6}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    invoke-static {v2, v3, v4, v5}, Lcom/android/nfc/beam/BeamReceiveService;->onStartCommand_aroundBody0(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
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

    invoke-static {p0, v0, p0, v1}, Lcom/android/nfc/beam/BeamReceiveService;->onCreate_aroundBody3$advice(Lcom/android/nfc/beam/BeamReceiveService;Lcom/android/nfc/beam/ABeamService;Lcom/android/nfc/beam/BeamReceiveService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
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

    invoke-static/range {v0 .. v8}, Lcom/android/nfc/beam/BeamReceiveService;->onStartCommand_aroundBody1$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Intent;IILcom/android/nfc/beam/ABeamService;Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    return v0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .registers 6
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 148
    if-nez p2, :cond_20

    .line 149
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transfer failed, final state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_20
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_2c

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 155
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 158
    :cond_2c
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 159
    iget v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 160
    return-void
.end method

.method prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 13
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_9

    move v4, v0

    .line 130
    :goto_8
    return v4

    .line 104
    :cond_9
    iget v1, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v1, v2, :cond_11

    move v4, v0

    .line 106
    goto :goto_8

    .line 109
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 111
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->aspectOf()Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    move-result-object v2

    invoke-static {p0, v1, v2, v1, v10}, Lcom/android/nfc/beam/BeamReceiveService;->enableNoAutoConnect_aroundBody5$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 112
    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 113
    goto :goto_8

    .line 115
    :cond_2e
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 116
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queueing out transfer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4e
    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->aspectOf()Lcom/android/nfc/beam/ABeamTransferManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/beam/BeamReceiveService;->init$_aroundBody7$advice(Lcom/android/nfc/beam/BeamReceiveService;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/android/nfc/beam/ABeamTransferManager;Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 124
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 125
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 126
    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 125
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 129
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    goto :goto_8
.end method
