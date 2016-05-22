.class public Lcom/android/nfc/ndefpush/NdefPushClient;
.super Ljava/lang/Object;
.source "NdefPushClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NdefPushClient"


# instance fields
.field final mLock:Ljava/lang/Object;

.field private mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v0, :cond_16

    .line 134
    :try_start_7
    const-string v0, "NdefPushClient"

    const-string v2, "About to close NPP socket."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_1e
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    .line 139
    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 141
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 131
    monitor-exit v1

    .line 143
    return-void

    .line 131
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0

    :catch_1e
    move-exception v0

    goto :goto_13
.end method

.method public connect()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 49
    :try_start_3
    iget v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    if-eqz v2, :cond_12

    .line 50
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Socket still in use."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v2

    .line 52
    :cond_12
    const/4 v2, 0x1

    :try_start_13
    iput v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 48
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_f

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    .line 55
    .local v0, "service":Lcom/android/nfc/NfcService;
    const/4 v1, 0x0

    .line 56
    .local v1, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v2, "NdefPushClient"

    const-string v3, "about to create socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    :try_start_28
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2b
    .catch Lcom/android/nfc/LlcpException; {:try_start_28 .. :try_end_2b} :catch_42

    move-result-object v1

    .line 66
    :try_start_2c
    const-string v2, "NdefPushClient"

    const-string v3, "about to connect to service com.android.npp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v2, "com.android.npp"

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_55

    .line 82
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 83
    :try_start_3b
    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 84
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 82
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_6d

    .line 86
    return-void

    .line 60
    :catch_42
    move-exception v2

    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 61
    const/4 v2, 0x0

    :try_start_47
    iput v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 60
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 63
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create socket."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2

    .line 69
    :catch_55
    move-exception v2

    if-eqz v1, :cond_5b

    .line 71
    :try_start_58
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_70

    .line 76
    :cond_5b
    :goto_5b
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    const/4 v2, 0x0

    :try_start_5f
    iput v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 76
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6a

    .line 79
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect service."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2

    .line 82
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    :catch_70
    move-exception v2

    goto :goto_5b
.end method

.method public push(Landroid/nfc/NdefMessage;)Z
    .registers 15
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    iget-object v10, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 91
    :try_start_6
    iget v11, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_14

    .line 92
    const-string v9, "NdefPushClient"

    const-string v11, "Not connected to NPP."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v10

    .line 127
    :cond_13
    :goto_13
    return v8

    .line 95
    :cond_14
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 90
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_51

    .line 98
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-direct {v4, p1, v9}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>(Landroid/nfc/NdefMessage;B)V

    .line 99
    .local v4, "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "offset":I
    :try_start_21
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 105
    .local v5, "remoteMiu":I
    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "about to send a "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte message"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_40
    array-length v10, v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_41} :catch_7f
    .catchall {:try_start_21 .. :try_end_41} :catchall_9f

    if-lt v3, v10, :cond_54

    .line 118
    if-eqz v6, :cond_4f

    .line 120
    :try_start_45
    const-string v8, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_af

    :cond_4f
    :goto_4f
    move v8, v9

    .line 113
    goto :goto_13

    .line 90
    .end local v0    # "buffer":[B
    .end local v3    # "offset":I
    .end local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v5    # "remoteMiu":I
    :catchall_51
    move-exception v8

    :try_start_52
    monitor-exit v10
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v8

    .line 107
    .restart local v0    # "buffer":[B
    .restart local v3    # "offset":I
    .restart local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v5    # "remoteMiu":I
    :cond_54
    :try_start_54
    array-length v10, v0

    sub-int/2addr v10, v3

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 108
    .local v2, "length":I
    add-int v10, v3, v2

    invoke-static {v0, v3, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 109
    .local v7, "tmpBuffer":[B
    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "about to send a "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte packet"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7d} :catch_7f
    .catchall {:try_start_54 .. :try_end_7d} :catchall_9f

    .line 111
    add-int/2addr v3, v2

    goto :goto_40

    .line 114
    .end local v2    # "length":I
    .end local v5    # "remoteMiu":I
    .end local v7    # "tmpBuffer":[B
    :catch_7f
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_80
    const-string v9, "NdefPushClient"

    const-string v10, "couldn\'t send tag"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v9, "NdefPushClient"

    const-string v10, "exception:"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_9f

    .line 118
    if-eqz v6, :cond_13

    .line 120
    :try_start_90
    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9a} :catch_9c

    goto/16 :goto_13

    .line 122
    :catch_9c
    move-exception v9

    goto/16 :goto_13

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_9f
    move-exception v8

    .line 118
    if-eqz v6, :cond_ac

    .line 120
    :try_start_a2
    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ac} :catch_ad

    .line 126
    :cond_ac
    :goto_ac
    throw v8

    :catch_ad
    move-exception v9

    goto :goto_ac

    .restart local v5    # "remoteMiu":I
    :catch_af
    move-exception v8

    goto :goto_4f
.end method
