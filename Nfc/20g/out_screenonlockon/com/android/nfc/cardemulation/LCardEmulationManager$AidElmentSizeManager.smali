.class Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;
.super Ljava/lang/Object;
.source "LCardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AidElmentSizeManager"
.end annotation


# instance fields
.field hostAidCount:I

.field hostAidLength:I

.field offHostAidCount:I

.field offHostAidLength:I

.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    .line 225
    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    .line 226
    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    .line 227
    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;)V
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V

    return-void
.end method
