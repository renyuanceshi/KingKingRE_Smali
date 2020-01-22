.class public Lcom/pccw/sms/emoji/EmojiFlowLayout;
.super Landroid/view/ViewGroup;
.source "EmojiFlowLayout.java"


# instance fields
.field private mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getWidth()I

    move-result v19

    .line 37
    .local v19, "width":I
    const/4 v14, 0x0

    .line 38
    .local v14, "lineWidth":I
    const/4 v11, 0x0

    .line 39
    .local v11, "lineHeight":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v13, "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getChildCount()I

    move-result v3

    .line 41
    .local v3, "cCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_1

    .line 42
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 44
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 46
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 48
    .local v5, "childHeight":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v14

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v14, 0x0

    .line 52
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v14, v14, v20

    .line 55
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 57
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v10, 0x0

    .line 63
    .local v10, "left":I
    const/16 v18, 0x0

    .line 64
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    .line 65
    .local v12, "lineNums":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    check-cast v13, Ljava/util/List;

    .line 67
    .restart local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pccw/sms/emoji/EmojiFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 69
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 70
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 71
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 69
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    .restart local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v9, v10, v20

    .line 78
    .local v9, "lc":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v17, v18, v20

    .line 79
    .local v17, "tc":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v16, v9, v20

    .line 80
    .local v16, "rc":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v2, v17, v20

    .line 82
    .local v2, "bc":I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v10, v10, v20

    goto :goto_3

    .line 87
    .end local v2    # "bc":I
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "lc":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "rc":I
    .end local v17    # "tc":I
    :cond_3
    const/4 v10, 0x0

    .line 88
    add-int v18, v18, v11

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 91
    .end local v8    # "j":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 101
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 102
    .local v15, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 103
    .local v14, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 104
    .local v13, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 106
    .local v12, "modeHeight":I
    const/16 v16, 0x0

    .line 107
    .local v16, "width":I
    const/4 v7, 0x0

    .line 108
    .local v7, "height":I
    const/4 v10, 0x0

    .line 109
    .local v10, "lineWidth":I
    const/4 v9, 0x0

    .line 110
    .local v9, "lineHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getChildCount()I

    move-result v3

    .line 111
    .local v3, "cCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 113
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 117
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v5, v17, v18

    .line 119
    .local v5, "childHeight":I
    add-int v17, v10, v6

    move/from16 v0, v17

    if-le v0, v15, :cond_1

    .line 120
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 121
    move v10, v6

    .line 122
    add-int/2addr v7, v9

    .line 123
    move v9, v5

    .line 128
    :goto_1
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 129
    move/from16 v0, v16

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 130
    add-int/2addr v7, v9

    .line 111
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 125
    :cond_1
    add-int/2addr v10, v6

    .line 126
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    .line 134
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .end local v15    # "sizeWidth":I
    :goto_2
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    .end local v14    # "sizeHeight":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/pccw/sms/emoji/EmojiFlowLayout;->setMeasuredDimension(II)V

    .line 138
    return-void

    .restart local v14    # "sizeHeight":I
    .restart local v15    # "sizeWidth":I
    :cond_3
    move/from16 v15, v16

    .line 134
    goto :goto_2

    .end local v15    # "sizeWidth":I
    :cond_4
    move v14, v7

    goto :goto_3
.end method
