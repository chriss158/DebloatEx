.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .registers 3

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 183
    :try_start_3
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 182
    .local v10, "threadRunning":Z
    monitor-exit v1

    .line 186
    :goto_6
    if-nez v10, :cond_c

    .line 248
    :goto_8
    return-void

    .line 182
    .end local v10    # "threadRunning":Z
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0

    .line 187
    .restart local v10    # "threadRunning":Z
    :cond_c
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "SnepServer"

    const-string v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_19
    :try_start_19
    iget-object v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v11
    :try_end_1c
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_1c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_e4
    .catchall {:try_start_19 .. :try_end_1c} :catchall_147

    .line 190
    :try_start_1c
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 191
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v3, v3, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v5, 0x400

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 189
    monitor-exit v11
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_6b

    .line 193
    :try_start_39
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_9e

    .line 194
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "SnepServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Lcom/android/nfc/LlcpException; {:try_start_39 .. :try_end_4a} :catch_6e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4a} :catch_e4
    .catchall {:try_start_39 .. :try_end_4a} :catchall_147

    .line 231
    :cond_4a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_4d
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_66

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_68

    .line 235
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_1d4
    .catchall {:try_start_5e .. :try_end_63} :catchall_68

    .line 239
    :goto_63
    const/4 v0, 0x0

    :try_start_64
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_66
    monitor-exit v1

    goto :goto_8

    :catchall_68
    move-exception v0

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_68

    throw v0

    .line 189
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v11
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v0
    :try_end_6e
    .catch Lcom/android/nfc/LlcpException; {:try_start_6d .. :try_end_6e} :catch_6e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6e} :catch_e4
    .catchall {:try_start_6d .. :try_end_6e} :catchall_147

    .line 226
    :catch_6e
    move-exception v7

    .line 227
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_6f
    const-string v0, "SnepServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_147

    .line 231
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_79
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_92

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_1c0

    .line 235
    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_1ce
    .catchall {:try_start_8a .. :try_end_8f} :catchall_1c0

    .line 239
    :goto_8f
    const/4 v0, 0x0

    :try_start_90
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_1c0

    .line 244
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_93
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 245
    :try_start_96
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 244
    monitor-exit v1

    goto/16 :goto_6

    :catchall_9b
    move-exception v0

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_9b

    throw v0

    .line 197
    :cond_9e
    :try_start_9e
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "SnepServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_ab
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_ae
    .catch Lcom/android/nfc/LlcpException; {:try_start_9e .. :try_end_ae} :catch_6e
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ae} :catch_e4
    .catchall {:try_start_9e .. :try_end_ae} :catchall_147

    .line 199
    :try_start_ae
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 198
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_e1

    .line 202
    :goto_b1
    if-nez v10, :cond_10d

    .line 225
    :try_start_b3
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "SnepServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Lcom/android/nfc/LlcpException; {:try_start_b3 .. :try_end_c0} :catch_6e
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c0} :catch_e4
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_147

    .line 231
    :cond_c0
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_c3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_dc

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_de

    .line 235
    :cond_d4
    :try_start_d4
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d9} :catch_1c6
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_de

    .line 239
    :goto_d9
    const/4 v0, 0x0

    :try_start_da
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_dc
    monitor-exit v1

    goto :goto_93

    :catchall_de
    move-exception v0

    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_de

    throw v0

    .line 198
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0
    :try_end_e4
    .catch Lcom/android/nfc/LlcpException; {:try_start_e3 .. :try_end_e4} :catch_6e
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e4} :catch_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_147

    .line 228
    :catch_e4
    move-exception v7

    .line 229
    .local v7, "e":Ljava/io/IOException;
    :try_start_e5
    const-string v0, "SnepServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_147

    .line 231
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_ef
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_108

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_ef .. :try_end_100} :catchall_10a

    .line 235
    :cond_100
    :try_start_100
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_105} :catch_1cb
    .catchall {:try_start_100 .. :try_end_105} :catchall_10a

    .line 239
    :goto_105
    const/4 v0, 0x0

    :try_start_106
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_108
    monitor-exit v1

    goto :goto_93

    :catchall_10a
    move-exception v0

    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_10a

    throw v0

    .line 204
    .end local v7    # "e":Ljava/io/IOException;
    :cond_10d
    :try_start_10d
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_110
    .catch Lcom/android/nfc/LlcpException; {:try_start_10d .. :try_end_110} :catch_6e
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_e4
    .catchall {:try_start_10d .. :try_end_110} :catchall_147

    .line 205
    :try_start_110
    iget-object v9, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 204
    .local v9, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_144

    .line 208
    if-nez v9, :cond_166

    .line 209
    :try_start_115
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_122

    const-string v0, "SnepServer"

    const-string v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Lcom/android/nfc/LlcpException; {:try_start_115 .. :try_end_122} :catch_6e
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_122} :catch_e4
    .catchall {:try_start_115 .. :try_end_122} :catchall_147

    .line 231
    :cond_122
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_125
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_13e

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_136

    const-string v0, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_125 .. :try_end_136} :catchall_141

    .line 235
    :cond_136
    :try_start_136
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_13b} :catch_1d1
    .catchall {:try_start_136 .. :try_end_13b} :catchall_141

    .line 239
    :goto_13b
    const/4 v0, 0x0

    :try_start_13c
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_13e
    monitor-exit v1

    goto/16 :goto_8

    :catchall_141
    move-exception v0

    monitor-exit v1
    :try_end_143
    .catchall {:try_start_13c .. :try_end_143} :catchall_141

    throw v0

    .line 204
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_144
    move-exception v0

    :try_start_145
    monitor-exit v1
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    :try_start_146
    throw v0
    :try_end_147
    .catch Lcom/android/nfc/LlcpException; {:try_start_146 .. :try_end_147} :catch_6e
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_147} :catch_e4
    .catchall {:try_start_146 .. :try_end_147} :catchall_147

    .line 230
    :catchall_147
    move-exception v0

    .line 231
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 232
    :try_start_14b
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_164

    .line 233
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v2

    if-eqz v2, :cond_15c

    const-string v2, "SnepServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_14b .. :try_end_15c} :catchall_1c3

    .line 235
    :cond_15c
    :try_start_15c
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_161} :catch_1c9
    .catchall {:try_start_15c .. :try_end_161} :catchall_1c3

    .line 239
    :goto_161
    const/4 v2, 0x0

    :try_start_162
    iput-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 231
    :cond_164
    monitor-exit v1
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_1c3

    .line 242
    throw v0

    .line 212
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_166
    :try_start_166
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_173

    const-string v0, "SnepServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_173
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 214
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    # getter for: Lcom/android/nfc/snep/SnepServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->access$0()Z

    move-result v0

    if-eqz v0, :cond_191

    const-string v0, "SnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accept returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_191
    if-eqz v6, :cond_1a8

    .line 216
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b3

    .line 217
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v8, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 218
    .local v8, "fragmentLength":I
    :goto_19e
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v0, v1, v6, v8}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->start()V

    .line 221
    .end local v8    # "fragmentLength":I
    :cond_1a8
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_1ab
    .catch Lcom/android/nfc/LlcpException; {:try_start_166 .. :try_end_1ab} :catch_6e
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_1ab} :catch_e4
    .catchall {:try_start_166 .. :try_end_1ab} :catchall_147

    .line 222
    :try_start_1ab
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 221
    monitor-exit v1

    goto/16 :goto_b1

    :catchall_1b0
    move-exception v0

    monitor-exit v1
    :try_end_1b2
    .catchall {:try_start_1ab .. :try_end_1b2} :catchall_1b0

    :try_start_1b2
    throw v0

    .line 217
    :cond_1b3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1be
    .catch Lcom/android/nfc/LlcpException; {:try_start_1b2 .. :try_end_1be} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1be} :catch_e4
    .catchall {:try_start_1b2 .. :try_end_1be} :catchall_147

    move-result v8

    goto :goto_19e

    .line 231
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_1c0
    move-exception v0

    :try_start_1c1
    monitor-exit v1
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1c3
    move-exception v0

    :try_start_1c4
    monitor-exit v1
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    throw v0

    :catch_1c6
    move-exception v0

    goto/16 :goto_d9

    :catch_1c9
    move-exception v2

    goto :goto_161

    .local v7, "e":Ljava/io/IOException;
    :catch_1cb
    move-exception v0

    goto/16 :goto_105

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_1ce
    move-exception v0

    goto/16 :goto_8f

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1d1
    move-exception v0

    goto/16 :goto_13b

    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1d4
    move-exception v0

    goto/16 :goto_63
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 252
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 253
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 255
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 259
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 251
    :cond_12
    monitor-exit v1

    .line 262
    return-void

    .line 251
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    goto :goto_f
.end method
