.class public Lcom/zhangdan/preferential/widget/PromDialogContentView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/zhangdan/preferential/widget/PromDescriptionView;

.field private c:Lcom/zhangdan/preferential/a/b;

.field private d:Lcom/zhangdan/preferential/a/q;

.field private e:Lcom/zhangdan/preferential/data/model/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/zhangdan/preferential/a/b;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->c:Lcom/zhangdan/preferential/a/b;

    new-instance v0, Lcom/zhangdan/preferential/a/q;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->d:Lcom/zhangdan/preferential/a/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/i;Lcom/a/a/a/a;)V
    .locals 9

    const/high16 v8, 0x41a0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->e:Lcom/zhangdan/preferential/data/model/i;

    invoke-virtual {p2}, Lcom/a/a/a/a;->c()Lcom/a/a/a/b/a;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1e

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v5, v8, v8, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->b:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a(Lcom/zhangdan/preferential/data/model/i;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->e:Lcom/zhangdan/preferential/data/model/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->d:Lcom/zhangdan/preferential/a/q;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->e:Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/data/model/i;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->c:Lcom/zhangdan/preferential/a/b;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->e:Lcom/zhangdan/preferential/data/model/i;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->h()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/b;->a([Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f06030a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->a:Landroid/widget/ImageView;

    const v0, 0x7f06030c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->b:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f06030a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06030b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
