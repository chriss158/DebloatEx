.class public Lcom/android/nfc/LP2pEventManager;
.super Lcom/android/nfc/P2pEventManager;
.source "LP2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/LP2pEventListener;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field mLSendUi:Lcom/android/nfc/beam/LSendUi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "LP2pEventManager"

    sput-object v0, Lcom/android/nfc/LP2pEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    .line 24
    return-void
.end method


# virtual methods
.method public isAvailableBeam()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    if-nez v0, :cond_6

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/LSendUi;->isAvailableBeam()Z

    move-result v0

    goto :goto_5
.end method

.method protected newSendUi(Landroid/content/Context;)Lcom/android/nfc/beam/SendUi;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/android/nfc/beam/LSendUi;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/beam/LSendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    .line 46
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    return-object v0
.end method

.method public setBeamTitle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    if-nez v0, :cond_6

    .line 29
    const/4 v0, 0x0

    .line 32
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/beam/LSendUi;

    invoke-virtual {v0, p1}, Lcom/android/nfc/beam/LSendUi;->setBeamTitle(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method
