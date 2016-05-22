.class public Lcom/android/nfc/TechListChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "TechListChooserActivity.java"


# static fields
.field public static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 35
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 36
    .local v8, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v8, Landroid/content/Intent;

    if-nez v0, :cond_26

    .line 37
    const-string v0, "TechListChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Target is not an intent: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->finish()V

    .line 45
    :goto_25
    return-void

    :cond_26
    move-object v2, v8

    .line 41
    check-cast v2, Landroid/content/Intent;

    .line 42
    .local v2, "target":Landroid/content/Intent;
    const-string v0, "rlist"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 43
    .local v5, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 44
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_25
.end method
