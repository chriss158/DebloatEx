.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 174
    const-string v0, "HandoverServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 175
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 180
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "HandoverServer"

    const-string v16, "starting connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_f
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_5f
    .catchall {:try_start_14 .. :try_end_1b} :catchall_15b

    .line 186
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 185
    .local v12, "running":Z
    monitor-exit v16
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_5c

    .line 189
    :try_start_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v15

    new-array v10, v15, [B
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_5f
    .catchall {:try_start_22 .. :try_end_2c} :catchall_15b

    .line 191
    .local v10, "partial":[B
    const/4 v6, 0x0

    .local v6, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v7, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v7, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v4, v3

    .line 192
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_2f
    if-nez v12, :cond_8b

    move-object v6, v7

    .line 253
    .end local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_32
    :try_start_32
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_41

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_41
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_48} :catch_163

    .line 259
    :goto_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_15d

    move-object v3, v4

    .line 264
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v10    # "partial":[B
    .end local v12    # "running":Z
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_4c
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5b

    const-string v15, "HandoverServer"

    const-string v16, "finished connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5b
    return-void

    .line 185
    :catchall_5c
    move-exception v15

    :try_start_5d
    monitor-exit v16
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v15
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5f} :catch_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_15b

    .line 250
    :catch_5f
    move-exception v15

    :goto_60
    :try_start_60
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_6f

    const-string v15, "HandoverServer"

    const-string v16, "IOException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_15b

    .line 253
    :cond_6f
    :try_start_6f
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_7e

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_7e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_85} :catch_168

    .line 259
    :goto_85
    :try_start_85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_4c

    .line 260
    :catch_89
    move-exception v15

    goto :goto_4c

    .line 193
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v10    # "partial":[B
    .restart local v12    # "running":Z
    :cond_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v13

    .line 194
    .local v13, "size":I
    if-gez v13, :cond_97

    move-object v6, v7

    .line 195
    .end local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_32

    .line 197
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_97
    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9b} :catch_ce
    .catchall {:try_start_8b .. :try_end_9b} :catchall_10e

    .line 200
    :try_start_9b
    new-instance v6, Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_a4
    .catch Landroid/nfc/FormatException; {:try_start_9b .. :try_end_a4} :catch_d1
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a4} :catch_ce
    .catchall {:try_start_9b .. :try_end_a4} :catchall_10e

    .line 205
    .end local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_a4
    if-eqz v6, :cond_16b

    .line 208
    :try_start_a6
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v1

    .line 210
    .local v1, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v15

    if-eqz v15, :cond_b9

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v15}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    .line 218
    :cond_b9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v15, v6}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v5

    .line 219
    .local v5, "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    if-nez v5, :cond_d4

    .line 220
    const-string v15, "HandoverServer"

    const-string v16, "Failed to create handover response"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 250
    .end local v1    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v5    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    :catch_ce
    move-exception v15

    move-object v3, v4

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_60

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v13    # "size":I
    :catch_d1
    move-exception v15

    move-object v6, v7

    .end local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_a4

    .line 225
    .restart local v1    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .restart local v5    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    :cond_d4
    const/4 v9, 0x0

    .line 226
    .local v9, "offset":I
    iget-object v15, v5, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    invoke-virtual {v15}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 227
    .local v2, "buffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v11

    .line 228
    .local v11, "remoteMiu":I
    :goto_e3
    array-length v15, v2

    if-lt v9, v15, :cond_12c

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v15}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    # getter for: Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/nfc/handover/HandoverServer;->access$0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v15

    if-nez v15, :cond_141

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v15}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_10c} :catch_ce
    .catchall {:try_start_a6 .. :try_end_10c} :catchall_10e

    goto/16 :goto_32

    .line 251
    .end local v1    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v2    # "buffer":[B
    .end local v5    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "offset":I
    .end local v11    # "remoteMiu":I
    .end local v13    # "size":I
    :catchall_10e
    move-exception v15

    move-object v3, v4

    .line 253
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "partial":[B
    .end local v12    # "running":Z
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_110
    :try_start_110
    sget-object v16, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_11f

    const-string v16, "HandoverServer"

    const-string v17, "about to close"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_128} :catch_166

    .line 259
    :goto_128
    :try_start_128
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_161

    .line 263
    :goto_12b
    throw v15

    .line 229
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .restart local v2    # "buffer":[B
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "offset":I
    .restart local v10    # "partial":[B
    .restart local v11    # "remoteMiu":I
    .restart local v12    # "running":Z
    .restart local v13    # "size":I
    :cond_12c
    :try_start_12c
    array-length v15, v2

    sub-int/2addr v15, v9

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 230
    .local v8, "length":I
    add-int v15, v9, v8

    invoke-static {v2, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 231
    .local v14, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 232
    add-int/2addr v9, v8

    goto :goto_e3

    .line 241
    .end local v8    # "length":I
    .end local v14    # "tmpBuffer":[B
    :cond_141
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_146} :catch_ce
    .catchall {:try_start_12c .. :try_end_146} :catchall_10e

    .line 244
    .end local v1    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v2    # "buffer":[B
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v9    # "offset":I
    .end local v11    # "remoteMiu":I
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_146
    :try_start_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14d} :catch_5f
    .catchall {:try_start_146 .. :try_end_14d} :catchall_15b

    .line 245
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 244
    monitor-exit v16

    move-object v7, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v4, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2f

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :catchall_158
    move-exception v15

    monitor-exit v16
    :try_end_15a
    .catchall {:try_start_14d .. :try_end_15a} :catchall_158

    :try_start_15a
    throw v15
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15b} :catch_5f
    .catchall {:try_start_15a .. :try_end_15b} :catchall_15b

    .line 251
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v10    # "partial":[B
    .end local v12    # "running":Z
    .end local v13    # "size":I
    :catchall_15b
    move-exception v15

    goto :goto_110

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v10    # "partial":[B
    .restart local v12    # "running":Z
    :catch_15d
    move-exception v15

    move-object v3, v4

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4c

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v10    # "partial":[B
    .end local v12    # "running":Z
    :catch_161
    move-exception v16

    goto :goto_12b

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v10    # "partial":[B
    .restart local v12    # "running":Z
    :catch_163
    move-exception v15

    goto/16 :goto_48

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v10    # "partial":[B
    .end local v12    # "running":Z
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_166
    move-exception v16

    goto :goto_128

    :catch_168
    move-exception v15

    goto/16 :goto_85

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v10    # "partial":[B
    .restart local v12    # "running":Z
    .restart local v13    # "size":I
    :cond_16b
    move-object v3, v4

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_146
.end method
