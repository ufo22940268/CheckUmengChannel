.class public Lcom/zhangdan/preferential/widget/PhotoView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/widget/PhotoView;->resolveSize(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/preferential/widget/PhotoView;->setMeasuredDimension(II)V

    return-void
.end method