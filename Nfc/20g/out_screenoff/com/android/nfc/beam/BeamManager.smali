.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final DBG:Z = false

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field protected mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 59
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .registers 2

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/beam/ABeamManager;->aspectOf()Lcom/android/nfc/beam/ABeamManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/beam/BeamManager;->getInstance_aroundBody1$advice(Lcom/android/nfc/beam/ABeamManager;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    return-object v0
.end method

.method private static final getInstance_aroundBody0()Lcom/android/nfc/beam/BeamManager;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method

.method private static final getInstance_aroundBody1$advice(Lcom/android/nfc/beam/ABeamManager;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamManager;
    .registers 5
    .param p0, "ajc$aspectInstance"    # Lcom/android/nfc/beam/ABeamManager;
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 18
    invoke-static {}, Lcom/android/nfc/beam/ABeamManager;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$DBG()Z

    move-result v0

    const-string v1, "ABeamManager.aj"

    const-string v2, "around() :execution(* BeamManager.getInstance(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_1f

    .line 122
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    const/4 v4, 0x0

    :try_start_a
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 122
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1a

    .line 126
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1d

    move v0, v1

    .line 127
    .local v0, "success":Z
    :goto_12
    if-eqz v0, :cond_19

    .line 130
    iget-object v2, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->playSuccessSound()V

    .line 135
    .end local v0    # "success":Z
    :cond_19
    :goto_19
    return v1

    .line 122
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    move v0, v2

    .line 126
    goto :goto_12

    :cond_1f
    move v1, v2

    .line 135
    goto :goto_19
.end method

.method public isBeamInProgress()Z
    .registers 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_3
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    monitor-exit v1

    return v0

    .line 67
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 75
    :try_start_4
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v4, :cond_b

    .line 76
    monitor-exit v3

    const/4 v2, 0x0

    .line 93
    :goto_a
    return v2

    .line 78
    :cond_b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 74
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3f

    .line 84
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v5, 0x0

    .line 83
    invoke-static {v3, v4, v5}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v1

    .line 86
    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 87
    const-class v4, Lcom/android/nfc/beam/BeamReceiveService;

    .line 86
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "receiveIntent":Landroid/content/Intent;
    const-string v3, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    .line 90
    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 89
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 92
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_a

    .line 74
    .end local v0    # "receiveIntent":Landroid/content/Intent;
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 100
    :try_start_4
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v4, :cond_b

    .line 101
    monitor-exit v3

    const/4 v2, 0x0

    .line 116
    :goto_a
    return v2

    .line 103
    :cond_b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 99
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_37

    .line 108
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 107
    invoke-static {v3, v4, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v1

    .line 110
    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 111
    const-class v4, Lcom/android/nfc/beam/BeamSendService;

    .line 110
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "sendIntent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    .line 114
    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 113
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_a

    .line 99
    .end local v0    # "sendIntent":Landroid/content/Intent;
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 143
    return-void
.end method
