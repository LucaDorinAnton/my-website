import React from 'react'
import ReactDOM from 'react-dom/client'
import { createBrowserRouter, RouterProvider } from 'react-router-dom'
import Index from './routes/Index' 
import Error404 from './errors/404'
import './index.css'


const router = createBrowserRouter([
  {
    path: '/',
    element: <Index />,
    errorElement: <Error404 />
  },
    {
    path: '/ami',
    element:<span>2aq0a78ubq1j6a4nqz432brhiy53c14ib7qimk8aglpib9m193kdm9n0c2wc3em5e3heg8r5uebi4846bm2y5uj8k5fqmbqccin4fld65s9ai8o1fg11suhjc1per6ficlshwzyibe8g7m41e67cp0vvtqjple5kzabi6yreiluwa99txw1zent74uzwinna9adlz7ns5ohztc4j429ea0bohjzmtlk5vvalbkyteqk1wbjsqd8gvrcsaddf06tb6zm7lutz00yx2hfl3iflbidgj196oq10f8m0bo42psj6hu043nkgs5iv4abgzrddig20gfvx1f403jyqyyew5fipekef80i2v05isej9scd5kwg5rt6j792xnd7gm005i72vr0rahjjertjljvbvh8if26l1ziv5ku2bkq1cd2pp5eh9iajq19v3a32m0a0pamb9dpujbf3w9i93awd96vwce0kgz7t31khf2jie43awabzy8vobfqjodlse2tnjhndkfnbp98enoncgtzluxxtlfo6pnbi7qur77uzf10nti5mlxmwne9chchi7ova2eve291yom3vavkqf377nnm2uq6ezt8ylx2clr9um1btl0ky4svsq94myme187fyoi0qjfm7taqswsfxkkmehwlp7a79jvf5ourgv1o9izuo6q9y6uw6h6m1zkg0pa5m2nbzfwo92tdni7otk2k8n1b3t2mvu67ue7ac4ic5u56vlcshun6yf40ju9x3yizjkwhxoeaucloedj6ch5k6wu38mxmqcjm0c5egae2ytei5vgmdkylcewet86pp4aeor6t4xfmlp2iy3kea6dgv8z28w5l5ycolx89i1jslu41strze4pm4jefdyr3mj2lyw1yt1a2blskffmqr54wyb00ju4552tyszpfd2tgtjnmoxz9kh9lrwf12odhl72p9id8ltuqx4eklb7qdwx4jewke1dhjwvfb3obfo4ulp5lx3on0vw2p31wa7tnt5ns3kdp933gdre1wvjm7sofbqbq0jd84229xgprek9c1kexri844s4cph9jzsd4hixdeg8nt5lj21d3ed2vhkhsul6ujmrqbetgmq6f8ctu698i79kduql8wlidbelg9bjakixxm8wievxkrknpqfh251ol7urxqpizlgmyr1q3pa4y72opvl0jh66ftn1ophguhl4j1ymc4zl01kk7onjwp88favs7zluy98xgl237zih0jdlha8guvh91s0zj018ziip4zrae4magso6jht44gk088tzeiboftjjaia79c0kvzsukvmn9h97b5hg6v0oi2b2ugrupazcch324tqd1mk38epruzzkofd51v4qb5sw11useeztbfzhhxsm3ly7sa5p5klm0di658lqwfey4hwfrr66vl6pa77czu74lfylwihc7uq4x6401kf86zouhibuyaa5dc289n7my299cvcoraqbi7zq2mnqf78w1y15f900gouhztn85je2xecpzvjm4caib6y73obef1dfk62d77wbdiewv3wlvprsk2mrgov05hfcmxv2p3yh3hwylw0kn8ibmx78fme42408u57e79q53wlyu315u2gs1415zsodrlflfru23djdzw17bdoeegf0h0x431s6f62heg621zh9j5dfxtrukjbq86r1wxzrsbd1x1i4ryok1ny1vtxlcf2d8ibxgtgsmbx49efvcs56ow7a65icwe0rd7q96vac0q2xulzyevtj8dnt8dd3c3y9ep1ftg99g95lj1t6jc170ptxh2av0zchkv6czaox74tn73qdkggzhvleupmxtb4og42bzgiuuqw3h8ehqszohh8oktug6hxc0kbtgh5zf6978hnlbijofgkzq5mxmrl4ljhsn445k0md1opu5vs57ugb9c80hvtz04q3d631zcp277ik137hv11sv3q6hnccnq7ah7vngo2go1dqyroblyxz2p4y4z5g4cadqvvr26n78oh2st3gs9ekv98sqrllypl9sae6f8rxnt4cpug5ipsyudzae9ezvze2sk9xnxb26yc4zc65rn7yvddo8c7i5bf2ydq1ui3j479q06q9lhvjyx8e7lzap4yorkxt15juc7ml2ybukphhpnuk673dv9w204jukjy2eak3mgk52v0z51njcskn4yb5v02b40cajc5w6r4wb2uqp7ofeidpoqhley2i3zlev395nbcicra8n2x9trst6f4n7b31q2pi618t2a95ou4gj1dklug2ocjx04v0j0u7d2et6kc5h0dgl2c3lkig7rdhrp746395tm493a592yyxp10e645gh4cy9lfvemhers481j53hdja3k4qreou2ll286zxnpdtfymd1h39zjqg25rwm8tqmnazz1bdvcfmovxbkq45ma0wg4mvi25vkire05djcwqcssu6lqkj85hvm7c40c4zau2l5m6nny8pi7jpbg3hv2x1pwyjsqcnuy8djn58dxu3b5gfoex86jeraakyjfyrpc0pf5dh2ypho6u9mzyz3dqr76006oaujd33e45li2d4ui1nt9c4yesdqrndzio6g8zol05hmfyjnunflls5woujbup0ns676aex20zgwhxsadonjarrp3pb65i7ybihf7hrw97e775oqul4tj13y07k22ml7ufhiylph2p0exepo7fx0cl1twhj4gj0vxibjsivoye61trpmd0cyor54ytbpvxfu8q3x1p85g5clabrynvau7wh7i04r4a0lyqvhu74gehokjaq1l8rv22myt9fpke51a9zvnen6ec408vkj050tyoh9qg886y8hld1ybowoqbbxlkzajzzguux8j84oifggfebq7ti7q3iipd3496rdp4bllq25gaesrj2yq31ensmilploq4acs7btlymf2ib8mt2f0abgt49acj5b2qn3w0fepyfxfhdp7a18k2evciaymat8ksb5nhhvx4g0h7uoocaykry1atjr7hcotlgajbzbfd46r8ah18bbooyt0ctnowzvlg0osloi3q0rvwirg4gfez9zjd10ydxnsfxua81f5731ic8jugz5eu5x8uhdbd9zqkk3axymtscsufbo6tte1jomhd9t8nyqe37t7e82brr32jh7z0c260mor48z6r0tpg4zqb0ginme24e246fb9jpbam693oe0h7sh</span>,
    errorElement: <Error404 />
  },
]);

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
)
