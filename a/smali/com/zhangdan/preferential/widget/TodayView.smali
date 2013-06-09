.class public Lcom/zhangdan/preferential/widget/TodayView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/PopupWindow;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0601cc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TodayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p0}, Lcom/zhangdan/preferential/widget/TodayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030108

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->d:[Ljava/lang/String;

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030053

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->d:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->d:[Ljava/lang/String;

    invoke-static {}, Lcom/zhangdan/preferential/a/e;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "\u4eca\u65e5"

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->d:[Ljava/lang/String;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Lcom/zhangdan/preferential/data/b;->a(I)I

    move-result v1

    const-string v2, "type_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x154

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return v5
.end method
