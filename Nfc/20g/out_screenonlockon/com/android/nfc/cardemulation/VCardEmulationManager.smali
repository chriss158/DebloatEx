.class public Lcom/android/nfc/cardemulation/VCardEmulationManager;
.super Lcom/android/nfc/cardemulation/LCardEmulationManager;
.source "VCardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;


# static fields
.field static final TAG:Ljava/lang/String; = "VCardEmulationManager"


# instance fields
.field mLHostEmulationManager:Lcom/android/nfc/cardemulation/LHostEmulationManager;

.field mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

.field mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 31
    new-instance v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    .line 32
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 34
    new-instance v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredServicesCache;Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 37
    new-instance v0, Lcom/android/nfc/cardemulation/LHostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/LHostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLHostEmulationManager:Lcom/android/nfc/cardemulation/LHostEmulationManager;

    .line 38
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLHostEmulationManager:Lcom/android/nfc/cardemulation/LHostEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 40
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 44
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 46
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->initialize()V

    .line 47
    return-void
.end method


# virtual methods
.method public onNfcEnabled()V
    .registers 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v0

    .line 52
    .local v0, "mVRoute":I
    const-string v1, "VCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNfcEnabled() enter - mVRoute : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initRoutingTable()V

    .line 56
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->onNfcEnabled()V

    .line 57
    return-void
.end method

.method public onRoutingTableChanged()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->onRoutingTableChanged()V

    .line 69
    return-void
.end method

.method public setDefaultRouteDest(I)V
    .registers 5
    .param p1, "route"    # I

    .prologue
    .line 61
    const-string v0, "VCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "route = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcDisabled()V

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcEnabled()V

    .line 64
    return-void
.end method
