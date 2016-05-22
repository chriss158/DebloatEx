.class Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;
.super Ljava/lang/Object;
.source "LCardEmulationTest.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationTest$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest;->mCallback:Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest;)Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$1;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest;->mCallback:Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest;)Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;->doGetRoutingTableFreeSpace()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, "-1"

    goto :goto_1e
.end method

.method public set(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
