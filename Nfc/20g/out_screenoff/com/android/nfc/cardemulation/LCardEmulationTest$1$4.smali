.class Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;
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
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->access$1(Lcom/android/nfc/cardemulation/LCardEmulationTest;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1$4;->this$1:Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;->access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest$1;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->access$2(Lcom/android/nfc/cardemulation/LCardEmulationTest;Z)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
