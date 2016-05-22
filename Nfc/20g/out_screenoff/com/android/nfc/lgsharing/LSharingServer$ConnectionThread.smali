.class Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/lgsharing/LSharingServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    .line 154
    const-string v0, "LSharingServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 155
    iput-object p2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 156
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 160
    sget-object v5, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "LSharingServer"

    const-string v7, "starting connection thread"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_12
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v6
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_45
    .catchall {:try_start_12 .. :try_end_15} :catchall_9c

    .line 166
    :try_start_15
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-boolean v4, v5, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 165
    .local v4, "running":Z
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_42

    .line 171
    const/4 v2, 0x0

    .local v2, "requestMessage":Landroid/nfc/NdefMessage;
    move-object v1, v0

    .line 172
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_1c
    if-nez v4, :cond_6b

    .line 196
    :goto_1e
    :try_start_1e
    sget-object v5, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "LSharingServer"

    const-string v7, "about to close"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_b9

    .line 202
    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_b3

    move-object v0, v1

    .line 207
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "running":Z
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_34
    sget-object v5, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "LSharingServer"

    const-string v7, "finished connection thread"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 165
    :catchall_42
    move-exception v5

    :try_start_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v5
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_45} :catch_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_9c

    .line 193
    :catch_45
    move-exception v5

    :goto_46
    :try_start_46
    sget-object v5, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "LSharingServer"

    const-string v7, "IOException"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_9c

    .line 196
    :try_start_53
    sget-object v5, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "LSharingServer"

    const-string v7, "about to close"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_65} :catch_c1

    .line 202
    :goto_65
    :try_start_65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_34

    .line 203
    :catch_69
    move-exception v5

    goto :goto_34

    .line 173
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "running":Z
    :cond_6b
    :try_start_6b
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v5, v6, v1}, Lcom/android/nfc/lgsharing/LSharingServer;->receivePacket(Lcom/android/nfc/DeviceHost$LlcpSocket;Ljava/io/ByteArrayOutputStream;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_c3

    .line 177
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-object v5, v5, Lcom/android/nfc/lgsharing/LSharingServer;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v5, v2}, Lcom/android/nfc/lgsharing/LSharingManager;->receiveMessage(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 178
    .local v3, "ret":Z
    if-nez v3, :cond_8a

    .line 179
    const-string v5, "LSharingServer"

    const-string v6, "Failed to create lg sharing response"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 193
    .end local v3    # "ret":Z
    :catch_87
    move-exception v5

    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_46

    .line 184
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "ret":Z
    :cond_8a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_8f} :catch_87
    .catchall {:try_start_6b .. :try_end_8f} :catchall_be

    .line 187
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ret":Z
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_8f
    :try_start_8f
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v6
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_45
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    .line 188
    :try_start_92
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-boolean v4, v5, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 187
    monitor-exit v6

    move-object v1, v0

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1c

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catchall_99
    move-exception v5

    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v5
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9c} :catch_45
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    .line 194
    .end local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "running":Z
    :catchall_9c
    move-exception v5

    .line 196
    :goto_9d
    :try_start_9d
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "about to close"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_af} :catch_bc

    .line 202
    :goto_af
    :try_start_af
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b7

    .line 206
    :goto_b2
    throw v5

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "running":Z
    :catch_b3
    move-exception v5

    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_34

    .end local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "running":Z
    :catch_b7
    move-exception v6

    goto :goto_b2

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "running":Z
    :catch_b9
    move-exception v5

    goto/16 :goto_30

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "running":Z
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_bc
    move-exception v6

    goto :goto_af

    .line 194
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "running":Z
    :catchall_be
    move-exception v5

    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_9d

    .end local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "running":Z
    :catch_c1
    move-exception v5

    goto :goto_65

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "running":Z
    :cond_c3
    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_8f
.end method
