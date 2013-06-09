.class public Lcom/zhangdan/preferential/widget/TodayDialogView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/zhangdan/preferential/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/zhangdan/preferential/a/e;->a()I

    move-result v2

    rsub-int/lit8 v3, v2, 0x7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/widget/k;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/zhangdan/preferential/widget/k;-><init>(Lcom/zhangdan/preferential/widget/TodayDialogView;Landroid/content/Context;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->b:Lcom/zhangdan/preferential/widget/k;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->b:Lcom/zhangdan/preferential/widget/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-static {}, Lcom/zhangdan/preferential/a/e;->a()I

    move-result v0

    add-int v1, p3, v0

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    add-int/2addr v0, p3

    :goto_0
    invoke-static {v0}, Lcom/zhangdan/preferential/data/b;->a(I)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/zhangdan/preferential/data/model/g;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/g;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->b:Lcom/zhangdan/preferential/widget/k;

    invoke-virtual {v0, p3}, Lcom/zhangdan/preferential/widget/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    iput v1, v3, Lcom/zhangdan/preferential/data/model/g;->c:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "menu_tag"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x7

    goto :goto_0
.end method
