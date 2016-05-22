.class public Lcom/android/nfc/VNfcService$VNfcAdapterService;
.super Lcom/android/nfc/LNfcService$LNfcAdapterService;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/VNfcService;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LNfcAdapterService;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method
