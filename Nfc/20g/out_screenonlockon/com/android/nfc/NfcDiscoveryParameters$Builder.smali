.class public Lcom/android/nfc/NfcDiscoveryParameters$Builder;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDiscoveryParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParameters:Lcom/android/nfc/NfcDiscoveryParameters;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # getter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z
    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->access$8(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 85
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # getter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z
    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->access$9(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # getter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z
    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->access$10(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 86
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t enable LPTD/P2P and reader mode simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_20
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    return-object v0
.end method

.method public setCustomConfig(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "config"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$2(Lcom/android/nfc/NfcDiscoveryParameters;I)V

    .line 46
    return-object p0
.end method

.method public setEnableFeliCa(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$7(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 79
    return-object p0
.end method

.method public setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$5(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 68
    return-object p0
.end method

.method public setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$3(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 53
    return-object p0
.end method

.method public setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$6(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 73
    return-object p0
.end method

.method public setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$4(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 59
    if-eqz p1, :cond_d

    .line 60
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$3(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 63
    :cond_d
    return-object p0
.end method

.method public setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "techMask"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$0(Lcom/android/nfc/NfcDiscoveryParameters;I)V

    .line 35
    return-object p0
.end method

.method public setTechMaskListen(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "techMask"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$1(Lcom/android/nfc/NfcDiscoveryParameters;I)V

    .line 42
    return-object p0
.end method
