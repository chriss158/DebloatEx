.class public Lcom/android/vcard/VCardUtils$TextUtilsPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUtilsPort"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 103
    const/16 v0, 0x20

    .line 104
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 105
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 110
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 111
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 112
    const/4 v2, 0x0

    .line 115
    :goto_12
    return v2

    .line 110
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 115
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method
