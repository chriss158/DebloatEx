.class public final Lcom/android/nfc/snep/SnepClient;
.super Ljava/lang/Object;
.source "SnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnepClient"


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 52
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 54
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 56
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "miu"    # I
    .param p2, "rwSize"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 70
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 72
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 74
    iput p1, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 75
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 61
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 63
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 64
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 65
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "fragmentLength"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 79
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 81
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 82
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 83
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "acceptableLength"    # I
    .param p3, "fragmentLength"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 88
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 90
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 91
    iput p3, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 92
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_10

    .line 189
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_12
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    .line 193
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 186
    :cond_10
    :goto_10
    monitor-exit p0

    .line 198
    return-void

    :catch_12
    move-exception v0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    goto :goto_10

    .line 186
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v0

    .line 192
    :catchall_1d
    move-exception v0

    .line 193
    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 195
    throw v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1a
.end method

.method public connect()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_2
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    if-eqz v4, :cond_11

    .line 137
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Socket already in use."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :catchall_e
    move-exception v4

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v4

    .line 139
    :cond_11
    const/4 v4, 0x1

    :try_start_12
    iput v4, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 135
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 142
    const/4 v3, 0x0

    .line 145
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_16
    sget-boolean v4, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v4, :cond_21

    const-string v4, "SnepClient"

    const-string v5, "about to create socket"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_21
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    const/16 v8, 0x400

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v3

    .line 148
    if-nez v3, :cond_48

    .line 149
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not connect to socket."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3a
    .catch Lcom/android/nfc/LlcpException; {:try_start_16 .. :try_end_3a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3a} :catch_a2

    .line 162
    :catch_3a
    move-exception v4

    monitor-enter p0

    .line 163
    const/4 v4, 0x0

    :try_start_3d
    iput v4, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 162
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_bc

    .line 165
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not connect to socket"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_48
    :try_start_48
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    if-ne v4, v9, :cond_82

    .line 152
    sget-boolean v4, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v4, :cond_66

    const-string v4, "SnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "about to connect to service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_66
    iget-object v4, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    .line 158
    :goto_6b
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v2

    .line 159
    .local v2, "miu":I
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    if-ne v4, v9, :cond_b5

    move v0, v2

    .line 160
    .local v0, "fragmentLength":I
    :goto_74
    new-instance v1, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_7a
    .catch Lcom/android/nfc/LlcpException; {:try_start_48 .. :try_end_7a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_7a} :catch_a2

    .line 179
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-enter p0

    .line 180
    :try_start_7b
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 181
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 179
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_c2

    .line 183
    return-void

    .line 155
    .end local v0    # "fragmentLength":I
    .end local v1    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v2    # "miu":I
    :cond_82
    :try_start_82
    sget-boolean v4, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v4, :cond_9c

    const-string v4, "SnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "about to connect to port "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_9c
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_a1
    .catch Lcom/android/nfc/LlcpException; {:try_start_82 .. :try_end_a1} :catch_3a
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_a1} :catch_a2

    goto :goto_6b

    .line 167
    :catch_a2
    move-exception v4

    if-eqz v3, :cond_a8

    .line 169
    :try_start_a5
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_c5

    .line 173
    :cond_a8
    :goto_a8
    monitor-enter p0

    .line 174
    const/4 v4, 0x0

    :try_start_aa
    iput v4, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 173
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_bf

    .line 176
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to connect to socket"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    .restart local v2    # "miu":I
    :cond_b5
    :try_start_b5
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I
    :try_end_ba
    .catch Lcom/android/nfc/LlcpException; {:try_start_b5 .. :try_end_ba} :catch_3a
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_ba} :catch_a2

    move-result v0

    goto :goto_74

    .line 162
    .end local v2    # "miu":I
    :catchall_bc
    move-exception v4

    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v4

    .line 173
    :catchall_bf
    move-exception v4

    :try_start_c0
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v4

    .line 179
    .restart local v0    # "fragmentLength":I
    .restart local v1    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local v2    # "miu":I
    :catchall_c2
    move-exception v4

    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v4

    .end local v0    # "fragmentLength":I
    .end local v1    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v2    # "miu":I
    :catch_c5
    move-exception v4

    goto :goto_a8
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 119
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :catchall_e
    move-exception v2

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v2

    .line 121
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 117
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    .line 124
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    :try_start_17
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 127
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_23
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_17 .. :try_end_23} :catch_26
    .catchall {:try_start_17 .. :try_end_23} :catchall_2d

    move-result-object v2

    :try_start_24
    monitor-exit v3

    return-object v2

    .line 128
    :catch_26
    move-exception v0

    .line 129
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 124
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 100
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :catchall_e
    move-exception v2

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v2

    .line 102
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 98
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    .line 105
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 107
    :try_start_17
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 108
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_21
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_17 .. :try_end_21} :catch_23
    .catchall {:try_start_17 .. :try_end_21} :catchall_2a

    .line 105
    :try_start_21
    monitor-exit v3

    .line 113
    return-void

    .line 109
    :catch_23
    move-exception v0

    .line 110
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 105
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v2
.end method
