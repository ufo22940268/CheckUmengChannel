.class public Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;
.super Landroid/widget/BaseAdapter;
.source "TicketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/TicketListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TicketAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/TicketListActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 141
    return-void
.end method

.method private buildHolder(Landroid/view/View;)Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;
    .locals 2
    .parameter "view"

    .prologue
    .line 135
    new-instance v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;)V

    .line 136
    .local v0, holder:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;
    const v1, 0x7f0902f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0902f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 138
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    #getter for: Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->access$100(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    #getter for: Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->access$100(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    #getter for: Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->access$100(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 120
    move-object v2, p2

    .line 121
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 122
    iget-object v3, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300d8

    new-instance v5, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 124
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->buildHolder(Landroid/view/View;)Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    #getter for: Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/preferential/TicketListActivity;->access$100(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Ticket;

    .line 128
    .local v1, ticket:Lcom/zhangdan/preferential/data/model/Ticket;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;

    .line 129
    .local v0, holder:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;
    iget-object v3, v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/zhangdan/preferential/data/model/Ticket;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/zhangdan/preferential/data/model/Ticket;->endTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-object v2
.end method
