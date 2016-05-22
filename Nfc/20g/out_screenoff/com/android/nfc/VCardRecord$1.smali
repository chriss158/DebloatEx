.class Lcom/android/nfc/VCardRecord$1;
.super Ljava/lang/Object;
.source "VCardRecord.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VCardRecord;

.field private final synthetic val$entries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/nfc/VCardRecord;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/VCardRecord$1;->this$0:Lcom/android/nfc/VCardRecord;

    iput-object p2, p0, Lcom/android/nfc/VCardRecord$1;->val$entries:Ljava/util/ArrayList;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .registers 1

    .prologue
    .line 196
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .registers 3
    .param p1, "entry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/VCardRecord$1;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method
