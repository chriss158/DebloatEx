.class Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mRunning:Z

.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 128
    :try_start_3
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 127
    .local v9, "threadRunning":Z
    monitor-exit v1

    .line 130
    :goto_6
    if-nez v9, :cond_c

    .line 187
    :goto_8
    return-void

    .line 127
    .end local v9    # "threadRunning":Z
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0

    .line 131
    .restart local v9    # "threadRunning":Z
    :cond_c
    const-string v0, "NdefPushServer"

    const-string v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_13
    iget-object v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v10
    :try_end_16
    .catch Lcom/android/nfc/LlcpException; {:try_start_13 .. :try_end_16} :catch_55
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_b2
    .catchall {:try_start_13 .. :try_end_16} :catchall_fc

    .line 134
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v0, v0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget v1, v1, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    const-string v2, "com.android.npp"

    .line 135
    const/16 v3, 0xf8

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 133
    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_52

    .line 137
    :try_start_2c
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_7e

    .line 138
    const-string v0, "NdefPushServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lcom/android/nfc/LlcpException; {:try_start_2c .. :try_end_37} :catch_55
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_b2
    .catchall {:try_start_2c .. :try_end_37} :catchall_fc

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_3a
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_4d

    .line 172
    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_4f

    .line 174
    :try_start_45
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_15e
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4f

    .line 178
    :goto_4a
    const/4 v0, 0x0

    :try_start_4b
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_4d
    monitor-exit v1

    goto :goto_8

    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_4f

    throw v0

    .line 133
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v10
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Lcom/android/nfc/LlcpException; {:try_start_54 .. :try_end_55} :catch_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_b2
    .catchall {:try_start_54 .. :try_end_55} :catchall_fc

    .line 165
    :catch_55
    move-exception v7

    .line 166
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_56
    const-string v0, "NdefPushServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_fc

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_60
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_73

    .line 172
    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_14b

    .line 174
    :try_start_6b
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_159
    .catchall {:try_start_6b .. :try_end_70} :catchall_14b

    .line 178
    :goto_70
    const/4 v0, 0x0

    :try_start_71
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_14b

    .line 183
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_74
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 184
    :try_start_77
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 183
    monitor-exit v1

    goto :goto_6

    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7b

    throw v0

    .line 141
    :cond_7e
    :try_start_7e
    const-string v0, "NdefPushServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_88
    .catch Lcom/android/nfc/LlcpException; {:try_start_7e .. :try_end_88} :catch_55
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_88} :catch_b2
    .catchall {:try_start_7e .. :try_end_88} :catchall_fc

    .line 143
    :try_start_88
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 142
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_af

    .line 146
    :goto_8b
    if-nez v9, :cond_d5

    .line 164
    :try_start_8d
    const-string v0, "NdefPushServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Lcom/android/nfc/LlcpException; {:try_start_8d .. :try_end_94} :catch_55
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_b2
    .catchall {:try_start_8d .. :try_end_94} :catchall_fc

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_97
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_aa

    .line 172
    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_ac

    .line 174
    :try_start_a2
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_151
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_ac

    .line 178
    :goto_a7
    const/4 v0, 0x0

    :try_start_a8
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_aa
    monitor-exit v1

    goto :goto_74

    :catchall_ac
    move-exception v0

    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_ac

    throw v0

    .line 142
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0
    :try_end_b2
    .catch Lcom/android/nfc/LlcpException; {:try_start_b1 .. :try_end_b2} :catch_55
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b2} :catch_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_fc

    .line 167
    :catch_b2
    move-exception v7

    .line 168
    .local v7, "e":Ljava/io/IOException;
    :try_start_b3
    const-string v0, "NdefPushServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_fc

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_bd
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_d0

    .line 172
    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_bd .. :try_end_c8} :catchall_d2

    .line 174
    :try_start_c8
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_156
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_d2

    .line 178
    :goto_cd
    const/4 v0, 0x0

    :try_start_ce
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_d0
    monitor-exit v1

    goto :goto_74

    :catchall_d2
    move-exception v0

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_d2

    throw v0

    .line 148
    .end local v7    # "e":Ljava/io/IOException;
    :cond_d5
    :try_start_d5
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_d8
    .catch Lcom/android/nfc/LlcpException; {:try_start_d5 .. :try_end_d8} :catch_55
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_b2
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_fc

    .line 149
    :try_start_d8
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 148
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_f9

    .line 151
    if-nez v8, :cond_115

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_e0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_f3

    .line 172
    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_f6

    .line 174
    :try_start_eb
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f0} :catch_15c
    .catchall {:try_start_eb .. :try_end_f0} :catchall_f6

    .line 178
    :goto_f0
    const/4 v0, 0x0

    :try_start_f1
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_f3
    monitor-exit v1

    goto/16 :goto_8

    :catchall_f6
    move-exception v0

    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_f6

    throw v0

    .line 148
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw v0
    :try_end_fc
    .catch Lcom/android/nfc/LlcpException; {:try_start_fb .. :try_end_fc} :catch_55
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fc} :catch_b2
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    .line 169
    :catchall_fc
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_100
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_113

    .line 172
    const-string v2, "NdefPushServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_100 .. :try_end_10b} :catchall_14e

    .line 174
    :try_start_10b
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_110} :catch_154
    .catchall {:try_start_10b .. :try_end_110} :catchall_14e

    .line 178
    :goto_110
    const/4 v2, 0x0

    :try_start_111
    iput-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 170
    :cond_113
    monitor-exit v1
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_14e

    .line 181
    throw v0

    .line 153
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_115
    :try_start_115
    const-string v0, "NdefPushServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 155
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accept returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v6, :cond_140

    .line 157
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->start()V

    .line 160
    :cond_140
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_143
    .catch Lcom/android/nfc/LlcpException; {:try_start_115 .. :try_end_143} :catch_55
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_143} :catch_b2
    .catchall {:try_start_115 .. :try_end_143} :catchall_fc

    .line 161
    :try_start_143
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 160
    monitor-exit v1

    goto/16 :goto_8b

    :catchall_148
    move-exception v0

    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_148

    :try_start_14a
    throw v0
    :try_end_14b
    .catch Lcom/android/nfc/LlcpException; {:try_start_14a .. :try_end_14b} :catch_55
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14b} :catch_b2
    .catchall {:try_start_14a .. :try_end_14b} :catchall_fc

    .line 170
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_14b
    move-exception v0

    :try_start_14c
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_14e
    move-exception v0

    :try_start_14f
    monitor-exit v1
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw v0

    :catch_151
    move-exception v0

    goto/16 :goto_a7

    :catch_154
    move-exception v2

    goto :goto_110

    .local v7, "e":Ljava/io/IOException;
    :catch_156
    move-exception v0

    goto/16 :goto_cd

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_159
    move-exception v0

    goto/16 :goto_70

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_15c
    move-exception v0

    goto :goto_f0

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_15e
    move-exception v0

    goto/16 :goto_4a
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 191
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 192
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 194
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 198
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 190
    :cond_12
    monitor-exit v1

    .line 201
    return-void

    .line 190
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
