.class public Lcom/android/nfc/dhimpl/VNativeNfcManager;
.super Lcom/android/nfc/dhimpl/NativeNfcManager;
.source "VNativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/LDeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;
    }
.end annotation


# static fields
.field private static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private static final DBG:Z = false

.field public static final NFC_CHIP_PN547:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VNativeNfcManager"


# instance fields
.field private final mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    .prologue
    .line 83
    move-object v0, p2

    check-cast v0, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    .line 84
    iput-object p2, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    .line 85
    return-void
.end method

.method private native doSetScrnState(I)V
.end method

.method private notifyAidRoutingTableFull()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;->onHostCardEmulationExceedAidTable()V

    .line 336
    return-void
.end method

.method private notifyAidRoutingTableUpdateSuccessful()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;->onRoutingTableUpdateSuccesful()V

    .line 331
    return-void
.end method

.method private notifyConnectivityListeners(I)V
    .registers 3
    .param p1, "evtSrc"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onConnectivityEvent(I)V

    .line 279
    return-void
.end method

.method private notifyEmvcoMultiCardDetectedListeners()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onEmvcoMultiCardDetectedEvent()V

    .line 286
    return-void
.end method

.method private notifyHostEmuExceedAidTable()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;->onHostCardEmulationExceedAidTable()V

    .line 340
    return-void
.end method

.method private notifySWPReaderActivated()V
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSWPReaderActivatedEvent()V

    .line 303
    return-void
.end method

.method private notifySWPReaderRequested(ZZ)V
    .registers 4
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSWPReaderRequestedEvent(ZZ)V

    .line 299
    return-void
.end method

.method private notifySeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeApduReceived([B)V

    .line 319
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeEmvCardRemoval()V

    .line 323
    return-void
.end method

.method private notifySeFieldActivated()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onRemoteFieldActivated()V

    .line 290
    return-void
.end method

.method private notifySeFieldDeactivated()V
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onRemoteFieldDeactivated()V

    .line 294
    return-void
.end method

.method private notifySeListenActivated()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeListenActivated()V

    .line 311
    return-void
.end method

.method private notifySeListenDeactivated()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeListenDeactivated()V

    .line 315
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeMifareAccess([B)V

    .line 327
    return-void
.end method

.method private notifyTargetDeselected()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationDeselected()V

    .line 265
    return-void
.end method

.method private notifyTransactionListeners([B[BI)V
    .registers 5
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationAidSelected([B[BI)V

    .line 272
    return-void
.end method

.method private notifyonSWPReaderDeActivated()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSWPReaderDeActivatedEvent()V

    .line 307
    return-void
.end method


# virtual methods
.method public native GetDefaultSE()I
.end method

.method public native JCOSDownload()I
.end method

.method public native SWPSelfTest(I)I
.end method

.method public SetScrnState(I)Z
    .registers 3
    .param p1, "Enable"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetScrnState(I)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public checkChipVer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    const-string v0, "unKnown"

    .line 185
    .local v0, "mCheckChipVer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getChipVer()I

    move-result v1

    .line 187
    .local v1, "mChipVer":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 188
    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 189
    const-string v0, "PN547"

    .line 196
    :cond_e
    :goto_e
    return-object v0

    .line 191
    :cond_f
    const-string v0, "PN65T"

    goto :goto_e
.end method

.method public checkFWVersion()Ljava/lang/String;
    .registers 7

    .prologue
    .line 235
    const-string v0, "unKnown"

    .line 236
    .local v0, "mCheckFWVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getFwVer()I

    move-result v1

    .line 237
    .local v1, "mFWVersion":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    .line 238
    const-string v2, "%x.%x.%x"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0xff0000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_34
    return-object v0
.end method

.method public checkMWVersion()Ljava/lang/String;
    .registers 7

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getMWVersion()I

    move-result v1

    .line 251
    .local v1, "mMWVersion":I
    const-string v2, "%x.%x.%x"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0xff0000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "mCheckMWVersion":Ljava/lang/String;
    return-object v0
.end method

.method public native clearAidTable()Z
.end method

.method public doDeselectSecureElement()V
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_14

    .line 102
    const-string v0, "VNativeNfcManager"

    const-string v1, "doDeselectSecureElement - UICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 110
    :goto_13
    return-void

    .line 104
    :cond_14
    sget-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_28

    .line 105
    const-string v0, "VNativeNfcManager"

    const-string v1, "doDeselectSecureElement - eSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    goto :goto_13

    .line 108
    :cond_28
    const-string v0, "VNativeNfcManager"

    const-string v1, "doDeselectSecureElement - No SE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doGetSecureElementTechList()I
.end method

.method public native doGetSecureElementUid()[B
.end method

.method public native doRouteAid([BIIZ)Z
.end method

.method public doSelectSecureElement()V
    .registers 3

    .prologue
    .line 89
    sget-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_14

    .line 90
    const-string v0, "VNativeNfcManager"

    const-string v1, "doSelectSecureElement - UICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 98
    :goto_13
    return-void

    .line 92
    :cond_14
    sget-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_28

    .line 93
    const-string v0, "VNativeNfcManager"

    const-string v1, "doSelectSecureElement - eSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    goto :goto_13

    .line 96
    :cond_28
    const-string v0, "VNativeNfcManager"

    const-string v1, "doSelectSecureElement - No SE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public native doSetDefaultDest(I)V
.end method

.method public native doSetEEPROM([B)V
.end method

.method public native doSetSEPowerOffState(IZ)V
.end method

.method public native doSetScreenState(I)V
.end method

.method public native doSetSecureElementListenTechMask(I)V
.end method

.method public native doSetVenConfigValue(I)V
.end method

.method public downloadFirmware()Z
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "isSuccess":Z
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDownload()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 120
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    .line 126
    :goto_16
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : EXIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0

    .line 123
    :cond_1e
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public native getAidTableSize()I
.end method

.method public native getChipVer()I
.end method

.method public native getDefaultAidRoute()I
.end method

.method public native getDefaultDesfireRoute()I
.end method

.method public native getDefaultMifareCLTRoute()I
.end method

.method public native getFWVersion()I
.end method

.method public native getFwVer()I
.end method

.method public native getMWVersion()I
.end method

.method public getSecureElementUid()[B
    .registers 5

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "buff":[B
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementUid()[B

    move-result-object v0

    .line 215
    if-nez v0, :cond_1e

    .line 218
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 219
    const-string v1, "VNativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buff : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1e
    return-object v0
.end method

.method public routeAid([BIIZ)Z
    .registers 6
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "isprefix"    # Z

    .prologue
    .line 137
    const/4 v0, 0x1

    .line 142
    .local v0, "status":Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doRouteAid([BIIZ)Z

    move-result v0

    .line 145
    return v0
.end method

.method public native setDefaultProtoRoute(III)V
.end method

.method public native setDefaultRoute(III)Z
.end method

.method public native setDefaultTechRoute(III)V
.end method

.method public native setEmvCoPollProfile(ZI)I
.end method
