.class Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;
.super Ljava/lang/Object;
.source "LHandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandoverInformation"
.end annotation


# instance fields
.field mIsLLCPActicated:Z

.field mRequestRandomNumber:[B

.field mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

.field final synthetic this$0:Lcom/android/nfc/handover/LHandoverDataParser;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LHandoverDataParser;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->this$0:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mIsLLCPActicated:Z

    .line 74
    sget-object v0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->INIT:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequestRandomNumber:[B

    return-void
.end method
