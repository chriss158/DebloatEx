.class public final Lcom/android/nfc/NfcDiscoveryParameters;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    }
.end annotation


# static fields
.field static final NFC_CUSTOMCONFIG_MASK:I = 0xff00

.field static final NFC_LISTEN_A:I = 0x1

.field static final NFC_LISTEN_B:I = 0x2

.field static final NFC_LISTEN_DEFAULT:I = -0x1

.field static final NFC_LISTEN_F:I = 0x4

.field static final NFC_LISTEN_MASK:I = 0xff

.field static final NFC_POLL_DEFAULT:I = -0x1


# instance fields
.field private mCustomConfig:I

.field private mEnableFeliCa:Z

.field private mEnableHostRouting:Z

.field private mEnableLowPowerDiscovery:Z

.field private mEnableP2p:Z

.field private mEnableReaderMode:Z

.field private mTechMask:I

.field private mTechMaskListen:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    .line 110
    iput v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    .line 111
    iput v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mCustomConfig:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/NfcDiscoveryParameters;I)V
    .registers 2

    .prologue
    .line 108
    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/nfc/NfcDiscoveryParameters;I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    return-void
.end method

.method static synthetic access$10(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method static synthetic access$2(Lcom/android/nfc/NfcDiscoveryParameters;I)V
    .registers 2

    .prologue
    .line 111
    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mCustomConfig:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 2

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return-void
.end method

.method static synthetic access$5(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 2

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return-void
.end method

.method static synthetic access$6(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 2

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return-void
.end method

.method static synthetic access$7(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 2

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    return-void
.end method

.method static synthetic access$8(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method static synthetic access$9(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 1

    .prologue
    .line 222
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 1

    .prologue
    .line 226
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 2

    .prologue
    .line 218
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-ne p1, p0, :cond_5

    .line 176
    :cond_4
    :goto_4
    return v1

    .line 172
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 173
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/android/nfc/NfcDiscoveryParameters;

    .line 176
    .local v0, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    iget v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-ne v3, v4, :cond_40

    .line 177
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    if-ne v3, v4, :cond_40

    .line 178
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    if-ne v3, v4, :cond_40

    .line 179
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-ne v3, v4, :cond_40

    .line 180
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    if-ne v3, v4, :cond_40

    .line 182
    iget v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    iget v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    if-ne v3, v4, :cond_40

    .line 183
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    .line 185
    if-eq v3, v4, :cond_4

    :cond_40
    move v1, v2

    .line 176
    goto :goto_4
.end method

.method public getCustomConfig()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mCustomConfig:I

    return v0
.end method

.method public getTechMask()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return v0
.end method

.method public getTechMaskListen()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    return v0
.end method

.method public shouldEnableDiscovery()Z
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public shouldEnableFeliCa()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    return v0
.end method

.method public shouldEnableHostRouting()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return v0
.end method

.method public shouldEnableLowPowerDiscovery()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method public shouldEnableP2p()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method public shouldEnableReaderMode()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-ne v1, v3, :cond_cb

    .line 192
    const-string v1, "mTechMask: default\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_f
    iget v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    if-ne v1, v3, :cond_eb

    .line 199
    const-string v1, "mTechMaskListen: default\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCustomConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mCustomConfig:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEnableFeliCa: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableFeliCa:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEnableLPD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEnableReader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEnableHostRouting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEnableP2p: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 194
    :cond_cb
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTechMask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 201
    :cond_eb
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTechMaskListen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMaskListen:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18
.end method
