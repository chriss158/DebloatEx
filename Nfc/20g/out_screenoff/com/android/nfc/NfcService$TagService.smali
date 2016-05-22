.class final Lcom/android/nfc/NfcService$TagService;
.super Landroid/nfc/INfcTag$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcTag$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .registers 3
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public close(I)I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1081
    const/4 v0, 0x0

    .line 1083
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1084
    const/16 v1, -0x11

    .line 1097
    :goto_12
    return v1

    .line 1088
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1089
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_27

    .line 1091
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 1092
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 1093
    const/4 v1, 0x0

    goto :goto_12

    .line 1096
    :cond_27
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1097
    const/4 v1, -0x5

    goto :goto_12
.end method

.method public connect(II)I
    .registers 6
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 1102
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1104
    const/4 v0, 0x0

    .line 1106
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1107
    const/16 v1, -0x11

    .line 1126
    :cond_13
    :goto_13
    return v1

    .line 1111
    :cond_14
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1112
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_13

    .line 1116
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1123
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1124
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public formatNdef(I[B)I
    .registers 6
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1330
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1335
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1336
    const/16 v1, -0x11

    .line 1348
    :cond_12
    :goto_12
    return v1

    .line 1340
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1341
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_12

    .line 1345
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1346
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getExtendedLengthApdusSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .registers 3
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1155
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1158
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1167
    :cond_10
    :goto_10
    return-object v1

    .line 1163
    :cond_11
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1164
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_10

    .line 1165
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    goto :goto_10
.end method

.method public getTimeout(I)I
    .registers 3
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1400
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .registers 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1190
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1192
    const/4 v1, 0x0

    .line 1195
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1205
    :cond_11
    :goto_11
    return v2

    .line 1200
    :cond_12
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1201
    .restart local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1202
    .local v0, "ndefInfo":[I
    if-eqz v1, :cond_11

    .line 1205
    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    goto :goto_11
.end method

.method public isPresent(I)Z
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1172
    const/4 v0, 0x0

    .line 1175
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1185
    :cond_a
    :goto_a
    return v1

    .line 1180
    :cond_b
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1181
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_a

    .line 1185
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    goto :goto_a
.end method

.method public ndefIsWritable(I)Z
    .registers 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1306
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1311
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1312
    const/16 v1, -0x11

    .line 1324
    :cond_12
    :goto_12
    return v1

    .line 1316
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1317
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_12

    .line 1321
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1322
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .registers 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1250
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1269
    :cond_10
    :goto_10
    return-object v2

    .line 1255
    :cond_11
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1256
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v1, :cond_10

    .line 1257
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v0

    .line 1258
    .local v0, "buf":[B
    if-eqz v0, :cond_10

    .line 1264
    :try_start_21
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_26
    .catch Landroid/nfc/FormatException; {:try_start_21 .. :try_end_26} :catch_28

    move-object v2, v3

    goto :goto_10

    .line 1266
    :catch_28
    move-exception v3

    goto :goto_10
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .registers 6
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1274
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1279
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1280
    const/16 v1, -0x11

    .line 1294
    :cond_12
    :goto_12
    return v1

    .line 1284
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1285
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_12

    .line 1289
    if-nez p2, :cond_21

    const/4 v1, -0x8

    goto :goto_12

    .line 1291
    :cond_21
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1292
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public reconnect(I)I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 1132
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1134
    const/4 v0, 0x0

    .line 1137
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1138
    const/16 v1, -0x11

    .line 1150
    :cond_13
    :goto_13
    return v1

    .line 1142
    :cond_14
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1143
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_13

    .line 1144
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1145
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .registers 9
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1354
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1356
    const/4 v6, 0x0

    .line 1359
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1382
    :cond_11
    :goto_11
    return-object v0

    .line 1364
    :cond_12
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v6, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1365
    .restart local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v6, :cond_11

    .line 1374
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 1375
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 1376
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 1378
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    .line 1379
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    move-object v5, p0

    .line 1378
    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 1380
    .local v0, "newTag":Landroid/nfc/Tag;
    goto :goto_11
.end method

.method public resetTimeouts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1407
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 1408
    return-void
.end method

.method public setTimeout(II)I
    .registers 5
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1388
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 1389
    .local v0, "success":Z
    if-eqz v0, :cond_13

    .line 1390
    const/4 v1, 0x0

    .line 1392
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x8

    goto :goto_12
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .registers 12
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1211
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1213
    const/4 v2, 0x0

    .line 1217
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1240
    :cond_12
    :goto_12
    return-object v4

    .line 1222
    :cond_13
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1223
    .restart local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_12

    .line 1225
    array-length v5, p2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v6

    if-le v5, v6, :cond_30

    .line 1226
    new-instance v5, Landroid/nfc/TransceiveResult;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    move-object v4, v5

    goto :goto_12

    .line 1228
    :cond_30
    new-array v3, v7, [I

    .line 1229
    .local v3, "targetLost":[I
    invoke-interface {v2, p2, p3, v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v0

    .line 1231
    .local v0, "response":[B
    if-eqz v0, :cond_3f

    .line 1232
    const/4 v1, 0x0

    .line 1238
    .local v1, "result":I
    :goto_39
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    goto :goto_12

    .line 1233
    .end local v1    # "result":I
    :cond_3f
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ne v4, v7, :cond_46

    .line 1234
    const/4 v1, 0x2

    .line 1235
    .restart local v1    # "result":I
    goto :goto_39

    .line 1236
    .end local v1    # "result":I
    :cond_46
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_39
.end method
