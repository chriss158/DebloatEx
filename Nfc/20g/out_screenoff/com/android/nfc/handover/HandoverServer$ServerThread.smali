.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$ServerThread;)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 91
    :try_start_3
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 90
    .local v9, "threadRunning":Z
    monitor-exit v1

    .line 94
    :goto_6
    if-nez v9, :cond_c

    .line 153
    :goto_8
    return-void

    .line 90
    .end local v9    # "threadRunning":Z
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0

    .line 96
    .restart local v9    # "threadRunning":Z
    :cond_c
    :try_start_c
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v10
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_c .. :try_end_f} :catch_5e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_dc
    .catchall {:try_start_c .. :try_end_f} :catchall_145

    .line 97
    :try_start_f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v1, v1, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    .line 98
    const-string v2, "urn:nfc:sn:handover"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 96
    monitor-exit v10
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_5b

    .line 100
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_90

    .line 101
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "HandoverServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lcom/android/nfc/LlcpException; {:try_start_25 .. :try_end_38} :catch_5e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_38} :catch_dc
    .catchall {:try_start_25 .. :try_end_38} :catchall_145

    .line 136
    :cond_38
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_3b
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_56

    .line 138
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_58

    .line 140
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_1c0
    .catchall {:try_start_4e .. :try_end_53} :catchall_58

    .line 144
    :goto_53
    const/4 v0, 0x0

    :try_start_54
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_56
    monitor-exit v1

    goto :goto_8

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v0

    .line 96
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v10
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catch Lcom/android/nfc/LlcpException; {:try_start_5d .. :try_end_5e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5e} :catch_dc
    .catchall {:try_start_5d .. :try_end_5e} :catchall_145

    .line 131
    :catch_5e
    move-exception v7

    .line 132
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_5f
    const-string v0, "HandoverServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_145

    .line 136
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_69
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_84

    .line 138
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_69 .. :try_end_7c} :catchall_1ac

    .line 140
    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_1ba
    .catchall {:try_start_7c .. :try_end_81} :catchall_1ac

    .line 144
    :goto_81
    const/4 v0, 0x0

    :try_start_82
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_1ac

    .line 149
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_85
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 150
    :try_start_88
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 149
    monitor-exit v1

    goto/16 :goto_6

    :catchall_8d
    move-exception v0

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_8d

    throw v0

    .line 104
    :cond_90
    :try_start_90
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "HandoverServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_9f
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_a2
    .catch Lcom/android/nfc/LlcpException; {:try_start_90 .. :try_end_a2} :catch_5e
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a2} :catch_dc
    .catchall {:try_start_90 .. :try_end_a2} :catchall_145

    .line 106
    :try_start_a2
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 105
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_d9

    .line 109
    :goto_a5
    if-nez v9, :cond_107

    .line 130
    :try_start_a7
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string v0, "HandoverServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Lcom/android/nfc/LlcpException; {:try_start_a7 .. :try_end_b6} :catch_5e
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b6} :catch_dc
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_145

    .line 136
    :cond_b6
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_b9
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_d4

    .line 138
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b9 .. :try_end_cc} :catchall_d6

    .line 140
    :cond_cc
    :try_start_cc
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d1} :catch_1b2
    .catchall {:try_start_cc .. :try_end_d1} :catchall_d6

    .line 144
    :goto_d1
    const/4 v0, 0x0

    :try_start_d2
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_d4
    monitor-exit v1

    goto :goto_85

    :catchall_d6
    move-exception v0

    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_d6

    throw v0

    .line 105
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    :try_start_db
    throw v0
    :try_end_dc
    .catch Lcom/android/nfc/LlcpException; {:try_start_db .. :try_end_dc} :catch_5e
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_dc} :catch_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_145

    .line 133
    :catch_dc
    move-exception v7

    .line 134
    .local v7, "e":Ljava/io/IOException;
    :try_start_dd
    const-string v0, "HandoverServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_145

    .line 136
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_e7
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_102

    .line 138
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_fa

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_e7 .. :try_end_fa} :catchall_104

    .line 140
    :cond_fa
    :try_start_fa
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_ff} :catch_1b7
    .catchall {:try_start_fa .. :try_end_ff} :catchall_104

    .line 144
    :goto_ff
    const/4 v0, 0x0

    :try_start_100
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_102
    monitor-exit v1

    goto :goto_85

    :catchall_104
    move-exception v0

    monitor-exit v1
    :try_end_106
    .catchall {:try_start_100 .. :try_end_106} :catchall_104

    throw v0

    .line 111
    .end local v7    # "e":Ljava/io/IOException;
    :cond_107
    :try_start_107
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_10a
    .catch Lcom/android/nfc/LlcpException; {:try_start_107 .. :try_end_10a} :catch_5e
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_dc
    .catchall {:try_start_107 .. :try_end_10a} :catchall_145

    .line 112
    :try_start_10a
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 111
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_142

    .line 115
    if-nez v8, :cond_166

    .line 116
    :try_start_10f
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11e

    const-string v0, "HandoverServer"

    const-string v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Lcom/android/nfc/LlcpException; {:try_start_10f .. :try_end_11e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11e} :catch_dc
    .catchall {:try_start_10f .. :try_end_11e} :catchall_145

    .line 136
    :cond_11e
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_121
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_13c

    .line 138
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_134

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_121 .. :try_end_134} :catchall_13f

    .line 140
    :cond_134
    :try_start_134
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_139} :catch_1bd
    .catchall {:try_start_134 .. :try_end_139} :catchall_13f

    .line 144
    :goto_139
    const/4 v0, 0x0

    :try_start_13a
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_13c
    monitor-exit v1

    goto/16 :goto_8

    :catchall_13f
    move-exception v0

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_13f

    throw v0

    .line 111
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_142
    move-exception v0

    :try_start_143
    monitor-exit v1
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw v0
    :try_end_145
    .catch Lcom/android/nfc/LlcpException; {:try_start_144 .. :try_end_145} :catch_5e
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_145} :catch_dc
    .catchall {:try_start_144 .. :try_end_145} :catchall_145

    .line 135
    :catchall_145
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 137
    :try_start_149
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_164

    .line 138
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15c

    const-string v2, "HandoverServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_149 .. :try_end_15c} :catchall_1af

    .line 140
    :cond_15c
    :try_start_15c
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_161} :catch_1b5
    .catchall {:try_start_15c .. :try_end_161} :catchall_1af

    .line 144
    :goto_161
    const/4 v2, 0x0

    :try_start_162
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_164
    monitor-exit v1
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_1af

    .line 147
    throw v0

    .line 119
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_166
    :try_start_166
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_175

    const-string v0, "HandoverServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_175
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 121
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_195

    const-string v0, "HandoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accept returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_195
    if-eqz v6, :cond_1a1

    .line 123
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->start()V

    .line 126
    :cond_1a1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_1a4
    .catch Lcom/android/nfc/LlcpException; {:try_start_166 .. :try_end_1a4} :catch_5e
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_1a4} :catch_dc
    .catchall {:try_start_166 .. :try_end_1a4} :catchall_145

    .line 127
    :try_start_1a4
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 126
    monitor-exit v1

    goto/16 :goto_a5

    :catchall_1a9
    move-exception v0

    monitor-exit v1
    :try_end_1ab
    .catchall {:try_start_1a4 .. :try_end_1ab} :catchall_1a9

    :try_start_1ab
    throw v0
    :try_end_1ac
    .catch Lcom/android/nfc/LlcpException; {:try_start_1ab .. :try_end_1ac} :catch_5e
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ac} :catch_dc
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_145

    .line 136
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_1ac
    move-exception v0

    :try_start_1ad
    monitor-exit v1
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1af
    move-exception v0

    :try_start_1b0
    monitor-exit v1
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    throw v0

    :catch_1b2
    move-exception v0

    goto/16 :goto_d1

    :catch_1b5
    move-exception v2

    goto :goto_161

    .local v7, "e":Ljava/io/IOException;
    :catch_1b7
    move-exception v0

    goto/16 :goto_ff

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_1ba
    move-exception v0

    goto/16 :goto_81

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1bd
    move-exception v0

    goto/16 :goto_139

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1c0
    move-exception v0

    goto/16 :goto_53
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 157
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 158
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 160
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 164
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 156
    :cond_12
    monitor-exit v1

    .line 167
    return-void

    .line 156
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
