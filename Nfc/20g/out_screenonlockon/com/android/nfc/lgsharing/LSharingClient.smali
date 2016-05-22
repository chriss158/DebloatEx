.class public Lcom/android/nfc/lgsharing/LSharingClient;
.super Ljava/lang/Object;
.source "LSharingClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "LSharingClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    .line 72
    sget-object v2, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eqz v1, :cond_f

    .line 75
    :try_start_7
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_14
    .catchall {:try_start_7 .. :try_end_c} :catchall_2a

    .line 80
    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 82
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 72
    monitor-exit v2

    .line 84
    return-void

    .line 76
    :catch_14
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LSharingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public connect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    sget-boolean v3, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v4, "LSharingClient"

    const-string v5, "connect"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 32
    :try_start_c
    iget v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    if-eqz v3, :cond_1b

    .line 33
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 31
    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v3

    .line 35
    :cond_1b
    const/4 v3, 0x1

    :try_start_1c
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 31
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    .line 37
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 38
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 40
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_2a
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2d
    .catch Lcom/android/nfc/LlcpException; {:try_start_2a .. :try_end_2d} :catch_46

    move-result-object v2

    .line 48
    :try_start_2e
    sget-boolean v3, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v4, "LSharingClient"

    const-string v5, "about to connect to service urn:nfc:xsn:lge.com:lgsharing"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "urn:nfc:xsn:lge.com:lgsharing"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_59

    .line 65
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_3f
    iput-object v2, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 67
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 65
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_87

    .line 69
    return-void

    .line 42
    :catch_46
    move-exception v3

    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 43
    const/4 v3, 0x0

    :try_start_4b
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 42
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_56

    .line 45
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v3

    .line 51
    :catch_59
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_5f

    .line 54
    :try_start_5c
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_6e

    .line 60
    :cond_5f
    :goto_5f
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 61
    const/4 v3, 0x0

    :try_start_63
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 60
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_84

    .line 63
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :catch_6e
    move-exception v3

    const-string v3, "LSharingClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 60
    :catchall_84
    move-exception v3

    :try_start_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v3

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_87
    move-exception v3

    :try_start_88
    monitor-exit v4
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v3
.end method

.method public sendLGSharingMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 14
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 86
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendLGSharingMessage : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    if-nez p1, :cond_1a

    .line 128
    :goto_19
    return-object v11

    .line 89
    :cond_1a
    const/4 v5, 0x0

    .line 90
    .local v5, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v8, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 91
    :try_start_1e
    iget v7, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2e

    .line 92
    new-instance v7, Ljava/io/IOException;

    const-string v9, "Socket not connected"

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :catchall_2b
    move-exception v7

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v7

    .line 94
    :cond_2e
    :try_start_2e
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 90
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 98
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3b
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v4

    .line 102
    .local v4, "remoteMiu":I
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "about to send a "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_5c
    array-length v7, v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5d} :catch_a0
    .catchall {:try_start_3b .. :try_end_5d} :catchall_c0

    if-lt v3, v7, :cond_73

    .line 114
    if-eqz v5, :cond_6d

    .line 116
    :try_start_61
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    const-string v9, "about to close"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6d} :catch_d5

    .line 123
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_19

    :catch_71
    move-exception v7

    goto :goto_19

    .line 104
    :cond_73
    :try_start_73
    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    .local v2, "length":I
    add-int v7, v3, v2

    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 106
    .local v6, "tmpBuffer":[B
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "about to send a "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte packet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_9e} :catch_a0
    .catchall {:try_start_73 .. :try_end_9e} :catchall_c0

    .line 108
    add-int/2addr v3, v2

    goto :goto_5c

    .line 112
    .end local v2    # "length":I
    .end local v4    # "remoteMiu":I
    .end local v6    # "tmpBuffer":[B
    :catch_a0
    move-exception v7

    :try_start_a1
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    const-string v9, "couldn\'t connect to service"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_c0

    .line 114
    if-eqz v5, :cond_b8

    .line 116
    :try_start_ac
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v8, "LSharingClient"

    const-string v9, "about to close"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b8} :catch_d9

    .line 123
    :cond_b8
    :goto_b8
    :try_start_b8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bd

    goto/16 :goto_19

    .line 124
    :catch_bd
    move-exception v7

    goto/16 :goto_19

    .line 113
    :catchall_c0
    move-exception v7

    .line 114
    if-eqz v5, :cond_cf

    .line 116
    :try_start_c3
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    const-string v10, "about to close"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cf} :catch_d7

    .line 123
    :cond_cf
    :goto_cf
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 127
    :goto_d2
    throw v7

    :catch_d3
    move-exception v8

    goto :goto_d2

    .restart local v4    # "remoteMiu":I
    :catch_d5
    move-exception v7

    goto :goto_6d

    .end local v4    # "remoteMiu":I
    :catch_d7
    move-exception v8

    goto :goto_cf

    :catch_d9
    move-exception v7

    goto :goto_b8
.end method
