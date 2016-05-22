.class Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V
    .registers 4
    .param p3, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1712
    .local p2, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    .line 1714
    iput p3, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    .line 1715
    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .registers 4
    .param p1, "elem"    # Lcom/android/vcard/VCardEntry$EntryElement;

    .prologue
    .line 1735
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1736
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/android/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    .line 1738
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .registers 1

    .prologue
    .line 1731
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .registers 2
    .param p1, "label"    # Lcom/android/vcard/VCardEntry$EntryLabel;

    .prologue
    .line 1727
    return-void
.end method

.method public onIterationEnded()V
    .registers 1

    .prologue
    .line 1723
    return-void
.end method

.method public onIterationStarted()V
    .registers 1

    .prologue
    .line 1719
    return-void
.end method
