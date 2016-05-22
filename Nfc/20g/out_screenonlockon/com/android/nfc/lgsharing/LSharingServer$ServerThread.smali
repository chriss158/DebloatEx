.class public Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;
.super Ljava/lang/Thread;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/lgsharing/LSharingServer;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 71
    :try_start_3
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 70
    .local v9, "threadRunning":Z
    monitor-exit v1

    .line 74
    :goto_6
    if-nez v9, :cond_c

    .line 133
    :goto_8
    return-void

    .line 70
    .end local v9    # "threadRunning":Z
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0

    .line 76
    .restart local v9    # "threadRunning":Z
    :cond_c
    :try_start_c
    iget-object v10, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v10
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_c .. :try_end_f} :catch_5a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_dd
    .catchall {:try_start_c .. :try_end_f} :catchall_14e

    .line 77
    :try_start_f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget v1, v1, Lcom/android/nfc/lgsharing/LSharingServer;->mSap:I

    .line 78
    const-string v2, "urn:nfc:xsn:lge.com:lgsharing"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 76
    monitor-exit v10
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_57

    .line 80
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_97

    .line 81
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "failed to create LLCP service socket"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lcom/android/nfc/LlcpException; {:try_start_25 .. :try_end_36} :catch_5a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_36} :catch_dd
    .catchall {:try_start_25 .. :try_end_36} :catchall_14e

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_39
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_52

    .line 118
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_54

    .line 120
    :try_start_4a
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_1c2
    .catchall {:try_start_4a .. :try_end_4f} :catchall_54

    .line 124
    :goto_4f
    const/4 v0, 0x0

    :try_start_50
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_52
    monitor-exit v1

    goto :goto_8

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw v0

    .line 76
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v10
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catch Lcom/android/nfc/LlcpException; {:try_start_59 .. :try_end_5a} :catch_5a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5a} :catch_dd
    .catchall {:try_start_59 .. :try_end_5a} :catchall_14e

    .line 111
    :catch_5a
    move-exception v7

    .line 112
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_5b
    const-string v0, "LSharingServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "llcp error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_14e

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_72
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_8b

    .line 118
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_72 .. :try_end_83} :catchall_1af

    .line 120
    :try_start_83
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_1bd
    .catchall {:try_start_83 .. :try_end_88} :catchall_1af

    .line 124
    :goto_88
    const/4 v0, 0x0

    :try_start_89
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_1af

    .line 129
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_8c
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 130
    :try_start_8f
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 129
    monitor-exit v1

    goto/16 :goto_6

    :catchall_94
    move-exception v0

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_94

    throw v0

    .line 84
    :cond_97
    :try_start_97
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "created LLCP service socket"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_a7
    .catch Lcom/android/nfc/LlcpException; {:try_start_97 .. :try_end_a7} :catch_5a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a7} :catch_dd
    .catchall {:try_start_97 .. :try_end_a7} :catchall_14e

    .line 86
    :try_start_a7
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 85
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_da

    .line 89
    :goto_aa
    if-nez v9, :cond_114

    .line 110
    :try_start_ac
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "stop running"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Lcom/android/nfc/LlcpException; {:try_start_ac .. :try_end_b9} :catch_5a
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b9} :catch_dd
    .catchall {:try_start_ac .. :try_end_b9} :catchall_14e

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_bc
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_d5

    .line 118
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_d7

    .line 120
    :try_start_cd
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d2} :catch_1b5
    .catchall {:try_start_cd .. :try_end_d2} :catchall_d7

    .line 124
    :goto_d2
    const/4 v0, 0x0

    :try_start_d3
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_d5
    monitor-exit v1

    goto :goto_8c

    :catchall_d7
    move-exception v0

    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d3 .. :try_end_d9} :catchall_d7

    throw v0

    .line 85
    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v0
    :try_end_dd
    .catch Lcom/android/nfc/LlcpException; {:try_start_dc .. :try_end_dd} :catch_5a
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_dd} :catch_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_14e

    .line 113
    :catch_dd
    move-exception v7

    .line 114
    .local v7, "e":Ljava/io/IOException;
    :try_start_de
    const-string v0, "LSharingServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_de .. :try_end_f2} :catchall_14e

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_f5
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_10e

    .line 118
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f5 .. :try_end_106} :catchall_111

    .line 120
    :try_start_106
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_10b} :catch_1ba
    .catchall {:try_start_106 .. :try_end_10b} :catchall_111

    .line 124
    :goto_10b
    const/4 v0, 0x0

    :try_start_10c
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_10e
    monitor-exit v1

    goto/16 :goto_8c

    :catchall_111
    move-exception v0

    monitor-exit v1
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_111

    throw v0

    .line 91
    .end local v7    # "e":Ljava/io/IOException;
    :cond_114
    :try_start_114
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_117
    .catch Lcom/android/nfc/LlcpException; {:try_start_114 .. :try_end_117} :catch_5a
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_dd
    .catchall {:try_start_114 .. :try_end_117} :catchall_14e

    .line 92
    :try_start_117
    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 91
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_14b

    .line 95
    if-nez v8, :cond_16d

    .line 96
    :try_start_11c
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "Server socket shut down."

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catch Lcom/android/nfc/LlcpException; {:try_start_11c .. :try_end_129} :catch_5a
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_129} :catch_dd
    .catchall {:try_start_11c .. :try_end_129} :catchall_14e

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_12c
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_145

    .line 118
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_13d
    .catchall {:try_start_12c .. :try_end_13d} :catchall_148

    .line 120
    :try_start_13d
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_142} :catch_1c0
    .catchall {:try_start_13d .. :try_end_142} :catchall_148

    .line 124
    :goto_142
    const/4 v0, 0x0

    :try_start_143
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_145
    monitor-exit v1

    goto/16 :goto_8

    :catchall_148
    move-exception v0

    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_148

    throw v0

    .line 91
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_14b
    move-exception v0

    :try_start_14c
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    :try_start_14d
    throw v0
    :try_end_14e
    .catch Lcom/android/nfc/LlcpException; {:try_start_14d .. :try_end_14e} :catch_5a
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_14e} :catch_dd
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14e

    .line 115
    :catchall_14e
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_152
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_16b

    .line 118
    sget-object v2, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "LSharingServer"

    const-string v4, "about to close"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_163
    .catchall {:try_start_152 .. :try_end_163} :catchall_1b2

    .line 120
    :try_start_163
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_168} :catch_1b8
    .catchall {:try_start_163 .. :try_end_168} :catchall_1b2

    .line 124
    :goto_168
    const/4 v2, 0x0

    :try_start_169
    iput-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 116
    :cond_16b
    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_1b2

    .line 127
    throw v0

    .line 99
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_16d
    :try_start_16d
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "about to accept"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 101
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accept returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v6, :cond_1a4

    .line 103
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;-><init>(Lcom/android/nfc/lgsharing/LSharingServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->start()V

    .line 106
    :cond_1a4
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_1a7
    .catch Lcom/android/nfc/LlcpException; {:try_start_16d .. :try_end_1a7} :catch_5a
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_1a7} :catch_dd
    .catchall {:try_start_16d .. :try_end_1a7} :catchall_14e

    .line 107
    :try_start_1a7
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 106
    monitor-exit v1

    goto/16 :goto_aa

    :catchall_1ac
    move-exception v0

    monitor-exit v1
    :try_end_1ae
    .catchall {:try_start_1a7 .. :try_end_1ae} :catchall_1ac

    :try_start_1ae
    throw v0
    :try_end_1af
    .catch Lcom/android/nfc/LlcpException; {:try_start_1ae .. :try_end_1af} :catch_5a
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1af} :catch_dd
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_14e

    .line 116
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_1af
    move-exception v0

    :try_start_1b0
    monitor-exit v1
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1b2
    move-exception v0

    :try_start_1b3
    monitor-exit v1
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b2

    throw v0

    :catch_1b5
    move-exception v0

    goto/16 :goto_d2

    :catch_1b8
    move-exception v2

    goto :goto_168

    .local v7, "e":Ljava/io/IOException;
    :catch_1ba
    move-exception v0

    goto/16 :goto_10b

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_1bd
    move-exception v0

    goto/16 :goto_88

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1c0
    move-exception v0

    goto :goto_142

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1c2
    move-exception v0

    goto/16 :goto_4f
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 137
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 138
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 140
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 144
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    :cond_12
    monitor-exit v1

    .line 147
    return-void

    .line 136
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
