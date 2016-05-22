.class Lcom/android/nfc/cardemulation/LCardEmulationTest$1;
.super Ljava/util/HashMap;
.source "LCardEmulationTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationTest;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;

    .line 69
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)V

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$2;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)V

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$3;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)V

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)V

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)Lcom/android/nfc/cardemulation/LCardEmulationTest;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;

    return-object v0
.end method
