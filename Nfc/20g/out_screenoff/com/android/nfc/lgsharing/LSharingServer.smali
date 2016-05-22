.class public Lcom/android/nfc/lgsharing/LSharingServer;
.super Ljava/lang/Object;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;,
        Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;
    }
.end annotation


# static fields
.field public static final DBG:Ljava/lang/Boolean;

.field public static final MIU:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "urn:nfc:xsn:lge.com:lgsharing"

.field public static final TAG:Ljava/lang/String; = "LSharingServer"


# instance fields
.field final mSap:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

.field final mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method public constructor <init>(ILcom/android/nfc/lgsharing/LSharingManager;)V
    .registers 4
    .param p1, "sap"    # I
    .param p2, "manager"    # Lcom/android/nfc/lgsharing/LSharingManager;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 29
    iput p1, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mSap:I

    .line 30
    iput-object p2, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 31
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    return v0
.end method

.method receivePacket(Lcom/android/nfc/DeviceHost$LlcpSocket;Ljava/io/ByteArrayOutputStream;)Landroid/nfc/NdefMessage;
    .registers 8
    .param p1, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p2, "byteStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v3

    new-array v0, v3, [B

    .line 213
    .local v0, "partial":[B
    invoke-interface {p1, v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v1

    .line 214
    .local v1, "size":I
    if-gez v1, :cond_e

    .line 224
    :goto_d
    return-object v2

    .line 217
    :cond_e
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 220
    :try_start_12
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_1b
    .catch Landroid/nfc/FormatException; {:try_start_12 .. :try_end_1b} :catch_1d

    move-object v2, v3

    goto :goto_d

    .line 224
    :catch_1d
    move-exception v3

    goto :goto_d
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    if-eqz v0, :cond_14

    .line 35
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "start - already started"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_35

    .line 44
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 38
    :cond_14
    :try_start_14
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    if-nez v0, :cond_12

    .line 40
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;-><init>(Lcom/android/nfc/lgsharing/LSharingServer;)V

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 41
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->start()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_35

    goto :goto_12

    .line 34
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    if-nez v0, :cond_14

    .line 48
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "stop - already stoped"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    .line 57
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 51
    :cond_14
    :try_start_14
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    if-eqz v0, :cond_12

    .line 53
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->shutdown()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_31

    goto :goto_12

    .line 47
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method
