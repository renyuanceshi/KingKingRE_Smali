.class synthetic Lorg/apache/http/impl/cookie/BrowserCompatSpec$2;
.super Ljava/lang/Object;
.source "BrowserCompatSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->values()[Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec$2;->$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I

    :try_start_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec$2;->$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I

    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec$2;->$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I

    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_IE_MEDIUM:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method