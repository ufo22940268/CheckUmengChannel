.class public final Lcom/zhangdan/app/activities/newimport/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/a;->b:[I

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/a;->a:Landroid/content/Context;

    return-void

    :array_0
    .array-data 0x4
        0x78t 0x2t 0x2t 0x7ft
        0x79t 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
        0x7ct 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/a;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/a;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/a;->b:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
