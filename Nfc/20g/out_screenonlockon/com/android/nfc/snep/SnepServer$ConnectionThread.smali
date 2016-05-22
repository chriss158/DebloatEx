.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .registers 6
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 104
    const-string v0, "SnepServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 106
    new-instance v0, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 111
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SnepServer"

    const-string v2, "starting connection thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3a
    .catchall {:try_start_d .. :try_end_10} :catchall_75

    .line 115
    :try_start_10
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 114
    .local v0, "running":Z
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_37

    .line 118
    :goto_15
    if-nez v0, :cond_5d

    .line 131
    :cond_17
    :try_start_17
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_24
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_89

    .line 138
    .end local v0    # "running":Z
    :goto_29
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "SnepServer"

    const-string v2, "finished connection thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_36
    return-void

    .line 114
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_75

    .line 128
    :catch_3a
    move-exception v1

    :try_start_3b
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "SnepServer"

    const-string v2, "Closing from IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_75

    .line 131
    :cond_48
    :try_start_48
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_55
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5a} :catch_5b

    goto :goto_29

    .line 133
    :catch_5b
    move-exception v1

    goto :goto_29

    .line 119
    .restart local v0    # "running":Z
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v1, v2}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 123
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6c} :catch_3a
    .catchall {:try_start_5d .. :try_end_6c} :catchall_75

    .line 124
    :try_start_6c
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 123
    monitor-exit v2

    goto :goto_15

    :catchall_72
    move-exception v1

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_72

    :try_start_74
    throw v1
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_75} :catch_3a
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 129
    .end local v0    # "running":Z
    :catchall_75
    move-exception v1

    .line 131
    :try_start_76
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v2

    if-eqz v2, :cond_83

    const-string v2, "SnepServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_83
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_88} :catch_8b

    .line 136
    :goto_88
    throw v1

    .restart local v0    # "running":Z
    :catch_89
    move-exception v1

    goto :goto_29

    .end local v0    # "running":Z
    :catch_8b
    move-exception v2

    goto :goto_88
.end method
