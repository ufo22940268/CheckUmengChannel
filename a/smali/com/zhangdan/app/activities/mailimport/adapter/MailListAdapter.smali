.class public Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public changeData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    move-object v3, p2

    .line 73
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 74
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)V

    .line 76
    .local v1, holder:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;
    const v4, 0x7f090286

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->contentView:Landroid/view/View;

    .line 77
    const v4, 0x7f090287

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->tvMailAccount:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f090288

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->tvLastAccessTime:Landroid/widget/TextView;

    .line 79
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    .end local v1           #holder:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;

    .line 84
    .restart local v1       #holder:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->contentView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/MailAccountInfo;

    .line 86
    .local v0, data:Lcom/zhangdan/app/data/model/MailAccountInfo;
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->tvMailAccount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getMailAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getLastWebAccessTime()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, time:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->tvLastAccessTime:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    return-object v3

    .line 91
    :cond_1
    iget-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->tvLastAccessTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700e3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    const-string v4, "yuan_import_mail_list_item_click"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 107
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/MailAccountInfo;

    .line 108
    .local v0, data:Lcom/zhangdan/app/data/model/MailAccountInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const-string v3, "email_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getMailAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 117
    .local v1, position:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;

    const v5, 0x7f07012f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;-><init>(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 137
    return v6
.end method
