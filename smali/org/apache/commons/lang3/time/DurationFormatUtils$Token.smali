.class Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 588
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 589
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 600
    iput p2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 601
    return-void
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "tokens"    # [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 569
    array-length v1, p0

    .line 570
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 571
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 572
    const/4 v2, 0x1

    .line 575
    :goto_1
    return v2

    .line 570
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 636
    instance-of v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 637
    check-cast v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 638
    .local v0, "tok2":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 652
    .end local v0    # "tok2":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :cond_0
    :goto_0
    return v1

    .line 641
    .restart local v0    # "tok2":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :cond_1
    iget v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-ne v2, v3, :cond_0

    .line 644
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 645
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 647
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 649
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
