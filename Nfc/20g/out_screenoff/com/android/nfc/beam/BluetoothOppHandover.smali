.class public Lcom/android/nfc/beam/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x1388

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/BluetoothOppHandover;->DBG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    iput-object p3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    .line 66
    iput-boolean p4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 71
    return-void
.end method


# virtual methods
.method complete()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 96
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 133
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method sendIntent()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v4, v3}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_63

    .line 115
    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v8, :cond_7b

    .line 116
    const-string v3, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v4, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    :goto_4a
    sget-boolean v3, Lcom/android/nfc/beam/BluetoothOppHandover;->DBG:Z

    if-eqz v3, :cond_55

    const-string v3, "BluetoothOppHandover"

    const-string v4, "Handing off outging transfer to BT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_55
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->complete()V

    .line 127
    return-void

    .line 104
    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 109
    .local v2, "uri":Landroid/net/Uri;
    :try_start_69
    iget-object v4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    const-string v5, "com.android.bluetooth"

    .line 110
    const/4 v6, 0x1

    .line 109
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_2a

    .line 112
    :catch_72
    move-exception v4

    const-string v4, "BluetoothOppHandover"

    const-string v5, "Failed to transfer permission to Bluetooth process."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 119
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_7b
    const-string v3, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_4a
.end method

.method public start()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x1388

    .line 78
    iget-boolean v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v1, :cond_2e

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 80
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gez v1, :cond_2a

    .line 81
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v6, v4

    .line 81
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_29
    return-void

    .line 86
    .restart local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2a
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_29

    .line 90
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2e
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_29
.end method
