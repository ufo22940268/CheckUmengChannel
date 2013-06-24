.class public Lcom/zhangdan/preferential/widget/TodayDialogView;
.super Landroid/widget/RelativeLayout;
.source "TodayDialogView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 10

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mListView:Landroid/widget/ListView;

    .line 38
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, weeks:[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    .line 40
    .local v5, newWeeks:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 41
    .local v7, toIndex:I
    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v8

    .line 42
    .local v8, today:I
    rsub-int/lit8 v0, v8, 0x7

    add-int/lit8 v6, v0, 0x1

    .line 43
    .local v6, len:I
    add-int/lit8 v0, v8, -0x1

    invoke-static {v9, v0, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    add-int/2addr v7, v6

    .line 45
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    .line 46
    const/4 v0, 0x0

    add-int/lit8 v1, v8, -0x1

    invoke-static {v9, v0, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300d9

    const v4, 0x7f0901d5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;-><init>(Lcom/zhangdan/preferential/widget/TodayDialogView;Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mAdapter:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;

    .line 49
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mAdapter:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 55
    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v4

    .line 57
    .local v4, today:I
    add-int v6, p3, v4

    const/4 v7, 0x7

    if-gt v6, v7, :cond_0

    .line 58
    add-int v0, p3, v4

    .line 63
    .local v0, date:I
    :goto_0
    invoke-static {v0}, Lcom/zhangdan/preferential/data/TypeConstants;->toTypeConstants(I)I

    move-result v5

    .line 64
    .local v5, typeId:I
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 66
    .local v3, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/TodayDialogView;->mAdapter:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;

    invoke-virtual {v6, p3}, Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 67
    iput v5, v3, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, extra:Landroid/os/Bundle;
    const-string v6, "menu_tag"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayDialogView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void

    .line 60
    .end local v0           #date:I
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    .end local v5           #typeId:I
    :cond_0
    add-int v6, p3, v4

    add-int/lit8 v0, v6, -0x7

    .restart local v0       #date:I
    goto :goto_0
.end method
