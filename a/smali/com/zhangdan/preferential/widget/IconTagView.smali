.class public Lcom/zhangdan/preferential/widget/IconTagView;
.super Landroid/widget/RelativeLayout;
.source "IconTagView.java"


# instance fields
.field private isChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->isChecked:Z

    .line 38
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->isChecked:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mDividerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->setBackgroundColor(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public fillData(Lcom/zhangdan/preferential/data/model/IconTag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mIconView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/zhangdan/preferential/data/model/IconTag;->typeId:I

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/CommonMethod;->getTypeResById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/IconTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->uncheck()V

    .line 54
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mNameView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mIconView:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->mDividerView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->isChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->isChecked:Z

    .line 58
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->updateView()V

    .line 59
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public uncheck()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->isChecked:Z

    .line 73
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->updateView()V

    .line 74
    return-void
.end method
