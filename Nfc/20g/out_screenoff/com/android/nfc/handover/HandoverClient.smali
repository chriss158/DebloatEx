.class public Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 88
    sget-object v1, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v0, :cond_f

    .line 91
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_17
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    .line 95
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 97
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 88
    monitor-exit v1

    .line 99
    return-void

    .line 88
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    goto :goto_c
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
    sget-object v3, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 49
    :try_start_3
    iget v2, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-eqz v2, :cond_12

    .line 50
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Socket in use."

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
    iput v2, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

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

    .line 57
    .local v1, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    :try_start_21
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_24
    .catch Lcom/android/nfc/LlcpException; {:try_start_21 .. :try_end_24} :catch_3f

    move-result-object v1

    .line 65
    :try_start_25
    sget-boolean v2, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v2, :cond_30

    const-string v2, "HandoverClient"

    const-string v3, "about to connect to service urn:nfc:sn:handover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_30
    const-string v2, "urn:nfc:sn:handover"

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_35} :catch_52

    .line 81
    sget-object v3, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    :try_start_38
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 83
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 81
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_6a

    .line 85
    return-void

    .line 59
    :catch_3f
    move-exception v2

    sget-object v3, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    const/4 v2, 0x0

    :try_start_44
    iput v2, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 59
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 62
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 69
    :catch_52
    move-exception v2

    if-eqz v1, :cond_58

    .line 71
    :try_start_55
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_6d

    .line 76
    :cond_58
    :goto_58
    sget-object v3, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    const/4 v2, 0x0

    :try_start_5c
    iput v2, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 76
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    .line 79
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect to handover service"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v2

    .line 81
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2

    :catch_6d
    move-exception v2

    goto :goto_58
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 16
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_4

    const/4 v2, 0x0

    .line 165
    :goto_3
    return-object v2

    .line 103
    :cond_4
    const/4 v9, 0x0

    .line 104
    .local v9, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v12, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 105
    :try_start_8
    iget v11, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_18

    .line 106
    new-instance v11, Ljava/io/IOException;

    const-string v13, "Socket not connected"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 104
    :catchall_15
    move-exception v11

    monitor-exit v12
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v11

    .line 108
    :cond_18
    :try_start_18
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 104
    monitor-exit v12
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 112
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_25
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v7

    .line 116
    .local v7, "remoteMiu":I
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_48

    const-string v11, "HandoverClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "about to send a "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " byte message"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_48
    :goto_48
    array-length v11, v0

    if-lt v5, v11, :cond_66

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverClient;->checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4e} :catch_c9
    .catchall {:try_start_25 .. :try_end_4e} :catchall_eb

    move-result v11

    if-nez v11, :cond_95

    .line 151
    if-eqz v9, :cond_61

    .line 153
    :try_start_53
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_5e

    const-string v11, "HandoverClient"

    const-string v12, "about to close"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_5e
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_61} :catch_10f

    .line 160
    :cond_61
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_100

    .line 127
    :goto_64
    const/4 v2, 0x0

    goto :goto_3

    .line 118
    :cond_66
    :try_start_66
    array-length v11, v0

    sub-int/2addr v11, v5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 119
    .local v4, "length":I
    add-int v11, v5, v4

    invoke-static {v0, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 120
    .local v10, "tmpBuffer":[B
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_90

    const-string v11, "HandoverClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "about to send a "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " byte packet"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_90
    invoke-interface {v9, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 122
    add-int/2addr v5, v4

    goto :goto_48

    .line 131
    .end local v4    # "length":I
    .end local v10    # "tmpBuffer":[B
    :cond_95
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v11

    new-array v6, v11, [B

    .line 132
    .local v6, "partial":[B
    const/4 v2, 0x0

    .line 134
    .local v2, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_9c
    invoke-interface {v9, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_9f} :catch_c9
    .catchall {:try_start_66 .. :try_end_9f} :catchall_eb

    move-result v8

    .line 135
    .local v8, "size":I
    if-gez v8, :cond_ba

    .line 151
    :goto_a2
    if-eqz v9, :cond_b2

    .line 153
    :try_start_a4
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_af

    const-string v11, "HandoverClient"

    const-string v12, "about to close"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_af
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b2} :catch_10b

    .line 160
    :cond_b2
    :goto_b2
    :try_start_b2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b7

    goto/16 :goto_3

    :catch_b7
    move-exception v11

    goto/16 :goto_3

    .line 138
    :cond_ba
    const/4 v11, 0x0

    :try_start_bb
    invoke-virtual {v1, v6, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c9
    .catchall {:try_start_bb .. :try_end_be} :catchall_eb

    .line 140
    :try_start_be
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_c7
    .catch Landroid/nfc/FormatException; {:try_start_be .. :try_end_c7} :catch_10d
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c7} :catch_c9
    .catchall {:try_start_be .. :try_end_c7} :catchall_eb

    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v3, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    move-object v2, v3

    .line 142
    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    goto :goto_a2

    .line 149
    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "partial":[B
    .end local v7    # "remoteMiu":I
    .end local v8    # "size":I
    :catch_c9
    move-exception v11

    :try_start_ca
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_d5

    const-string v11, "HandoverClient"

    const-string v12, "couldn\'t connect to handover service"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_eb

    .line 151
    :cond_d5
    if-eqz v9, :cond_e5

    .line 153
    :try_start_d7
    sget-boolean v11, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v11, :cond_e2

    const-string v11, "HandoverClient"

    const-string v12, "about to close"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_e2
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e5} :catch_109

    .line 160
    :cond_e5
    :goto_e5
    :try_start_e5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_103

    .line 165
    :goto_e8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 150
    :catchall_eb
    move-exception v11

    .line 151
    if-eqz v9, :cond_fc

    .line 153
    :try_start_ee
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_f9

    const-string v12, "HandoverClient"

    const-string v13, "about to close"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_f9
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_fc} :catch_107

    .line 160
    :cond_fc
    :goto_fc
    :try_start_fc
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_105

    .line 164
    :goto_ff
    throw v11

    .restart local v7    # "remoteMiu":I
    :catch_100
    move-exception v11

    goto/16 :goto_64

    .line 161
    .end local v7    # "remoteMiu":I
    :catch_103
    move-exception v11

    goto :goto_e8

    :catch_105
    move-exception v12

    goto :goto_ff

    :catch_107
    move-exception v12

    goto :goto_fc

    :catch_109
    move-exception v11

    goto :goto_e5

    .restart local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "partial":[B
    .restart local v7    # "remoteMiu":I
    .restart local v8    # "size":I
    :catch_10b
    move-exception v11

    goto :goto_b2

    .line 133
    :catch_10d
    move-exception v11

    goto :goto_9c

    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "partial":[B
    .end local v8    # "size":I
    :catch_10f
    move-exception v11

    goto/16 :goto_61
.end method
