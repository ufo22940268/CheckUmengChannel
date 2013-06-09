.class public final Lcom/zhangdan/app/activities/main/a/j;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x0

    const v2, 0x7f020325

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x1

    const v2, 0x7f020322

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x2

    const v2, 0x7f02031f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x3

    const v2, 0x7f02031c

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x4

    const v2, 0x7f02032b

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x5

    const v2, 0x7f020319

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x6

    const v2, 0x7f02032e

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    const/4 v1, 0x7

    const v2, 0x7f020328

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/j;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f060173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f060328

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/j;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/j;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object p2
.end method
