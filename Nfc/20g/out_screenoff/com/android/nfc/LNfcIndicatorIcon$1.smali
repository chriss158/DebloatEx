.class Lcom/android/nfc/LNfcIndicatorIcon$1;
.super Ljava/util/HashMap;
.source "LNfcIndicatorIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcIndicatorIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 8

    .prologue
    const v6, 0x7f02000c

    const v5, 0x7f02000b

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 46
    new-array v1, v2, [I

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 48
    new-array v1, v2, [I

    .line 49
    aput v6, v1, v3

    .line 50
    aput v6, v1, v4

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 52
    new-array v1, v2, [I

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 54
    new-array v1, v2, [I

    fill-array-data v1, :array_42

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 58
    new-array v1, v2, [I

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleD:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 60
    new-array v1, v2, [I

    .line 61
    aput v5, v1, v3

    .line 62
    aput v5, v1, v4

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void

    .line 54
    :array_42
    .array-data 4
        0x7f02000a
        0x7f02000c
        0x7f02000c
    .end array-data
.end method
