.class public Lcom/zhangdan/preferential/widget/IconTagView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->d:Z

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/IconTagView;->e:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->d:Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->c()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/zhangdan/preferential/data/model/f;)V
    .locals 2

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/IconTagView;->b:Landroid/widget/ImageView;

    iget v0, p1, Lcom/zhangdan/preferential/data/model/f;->c:I

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f0202f3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->b()V

    return-void

    :sswitch_0
    const v0, 0x7f0201b2

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0201b8

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0201b1

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0201b3

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0201af

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0201b6

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0201b4

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0201b0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0201b5

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0201b7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x2d -> :sswitch_3
        0x32 -> :sswitch_4
        0x37 -> :sswitch_5
        0x3c -> :sswitch_6
        0x41 -> :sswitch_7
        0x46 -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->d:Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/IconTagView;->c()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f060149

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->a:Landroid/widget/TextView;

    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->b:Landroid/widget/ImageView;

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/IconTagView;->c:Landroid/view/View;

    return-void
.end method
