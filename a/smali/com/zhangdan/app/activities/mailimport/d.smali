.class final Lcom/zhangdan/app/activities/mailimport/d;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

.field private b:[I


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/d;->a:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/d;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x78t 0x2t 0x2t 0x7ft
        0x7at 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
        0x7ct 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/d;->b:[I

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

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/d;->a:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/d;->b:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/d;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/d;->a:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->finish()V

    :cond_0
    return-void
.end method
