.class Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;
.super Ljava/util/HashMap;
.source "LCardEmulationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 55
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_UNLOCKED:I
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->access$0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_LOCKED:I
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->access$1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    # getter for: Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_OFF:I
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->access$2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
