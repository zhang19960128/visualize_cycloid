data=importdata("spin.dat");
cell=20;
[xgrid,ygrid,zgrid]=meshgrid(1:cell,1:cell,1:cell);
timeframe=length(data)/cell/cell/cell;
ugrid=zeros(cell,cell,cell);
vgrid=zeros(cell,cell,cell);
wgrid=zeros(cell,cell,cell);
frame=30;
%for i=1:cell
%  for j=1:cell
%    for k=1:cell
%      index=(i-1)+cell*(j-1)+cell*cell*(k-1)+1+frame*cell*cell*cell;
%      ugrid(i,j,k)=data(index,1);
%      vgrid(i,j,k)=data(index,2);
%      wgrid(i,j,k)=data(index,3);
%    end
%  end
%end
%quiver3(xgrid,ygrid,zgrid,ugrid,vgrid,wgrid)
axis=[1,-1,0];
for i=1:cell
  index=frame*cell*cell*cell+mod(axis(1)*i+cell,cell)+mod(axis(2)*i+cell,cell)*cell+mod(axis(3)*i+cell,cell)*cell*cell;
  mArrow3(data(index,1:3),data(index,1:3)+data(index,4:6),'color','red','stemWidth',0.1,'facealpha',1.0)
  hold on
end
hold off
