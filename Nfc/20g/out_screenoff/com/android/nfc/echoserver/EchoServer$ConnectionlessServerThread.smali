.class public Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;
.super Ljava/lang/Thread;
.source "EchoServer.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServerThread"
.end annotation


# instance fields
.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field mRemoteSap:I

.field mRunning:Z

.field socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 283
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 285
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "connectionBroken":Z
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "EchoServer"

    const-string v6, "about create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v5, v5, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    .line 295
    const/16 v6, 0x12

    const-string v7, "urn:nfc:sn:cl-echo"

    .line 294
    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 296
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-nez v5, :cond_8e

    .line 297
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_29

    const-string v5, "EchoServer"

    const-string v6, "failed to create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/nfc/LlcpException; {:try_start_c .. :try_end_29} :catch_a3
    .catchall {:try_start_c .. :try_end_29} :catchall_be

    .line 327
    :cond_29
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_32
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_d0

    .line 337
    :cond_37
    :goto_37
    return-void

    .line 303
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v3

    .line 304
    .local v3, "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_95
    .catch Lcom/android/nfc/LlcpException; {:try_start_38 .. :try_end_43} :catch_a3
    .catchall {:try_start_38 .. :try_end_43} :catchall_be

    move-result-object v5

    if-nez v5, :cond_57

    .line 327
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_46
    :goto_46
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_4f
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_37

    :catch_55
    move-exception v5

    goto :goto_37

    .line 307
    .restart local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_57
    :try_start_57
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v1

    .line 308
    .local v1, "dataUnit":[B
    array-length v4, v1

    .line 310
    .local v4, "size":I
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_7f

    const-string v5, "EchoServer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_7f
    if-gez v4, :cond_83

    .line 312
    const/4 v0, 0x1

    goto :goto_46

    .line 315
    :cond_83
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getRemoteSap()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    .line 316
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5, v1, v4}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_8e} :catch_95
    .catch Lcom/android/nfc/LlcpException; {:try_start_57 .. :try_end_8e} :catch_a3
    .catchall {:try_start_57 .. :try_end_8e} :catchall_be

    .line 301
    .end local v1    # "dataUnit":[B
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v4    # "size":I
    :cond_8e
    :goto_8e
    :try_start_8e
    iget-boolean v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    if-eqz v5, :cond_46

    if-eqz v0, :cond_38

    goto :goto_46

    .line 318
    :catch_95
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 321
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_8e

    const-string v5, "EchoServer"

    const-string v6, "connection broken by IOException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catch Lcom/android/nfc/LlcpException; {:try_start_8e .. :try_end_a2} :catch_a3
    .catchall {:try_start_8e .. :try_end_a2} :catchall_be

    goto :goto_8e

    .line 324
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a3
    move-exception v2

    .line 325
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_a4
    const-string v5, "EchoServer"

    const-string v6, "llcp error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_be

    .line 327
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_b4
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b9} :catch_bb

    goto/16 :goto_37

    .line 332
    :catch_bb
    move-exception v5

    goto/16 :goto_37

    .line 326
    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    :catchall_be
    move-exception v5

    .line 327
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_cd

    .line 331
    :try_start_c8
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_ce

    .line 335
    :cond_cd
    :goto_cd
    throw v5

    :catch_ce
    move-exception v6

    goto :goto_cd

    :catch_d0
    move-exception v5

    goto/16 :goto_37
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 341
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    invoke-interface {v0, v1, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 350
    :cond_7
    :goto_7
    return-void

    .line 348
    :catch_8
    move-exception v0

    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "EchoServer"

    const-string v1, "Error writing data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
