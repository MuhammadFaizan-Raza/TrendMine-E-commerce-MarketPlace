/* No Jquery*/
const _ = {};
_.find = (a) => document.querySelectorAll(a);
_.slice = (a) => [].slice.call(a);
_.each = (a, b) => [].forEach.call(a, b);
_.hide = (a) => a.classList.remove('active');
_.show = (a) => a.classList.add('active');
_.has = (a, b) => a.classList.contains(b);
_.toggle = (a, b) => a.classList.toggle(b);

//Make generic slider
function _sliderMoveTo(opts){
   let items = opts.element.querySelectorAll('section'),
       n = opts.item - 1;
   //Reset class
   _.each(items, (i) => i.className = "");
   //Select active
   items[n].className = "active";
   opts.element.style.transform = "translate(" + (-(n) * opts.width) + "px, 0)";
}

//Move panel
function _move(e, n) {
   let slider = e.parentNode.parentNode;
   _sliderMoveTo({
      element: slider,
      width: 500,
      item: n
   })
}

function _toggle(e) {
   
   const modal = e.parentNode.querySelector(".modal"),
         m = _.slice(_.find(".modal")),
         s = modal.querySelector(".slider");
   
   if (!_.has(modal, "active")) {
      //scroll to bottom
      window.scrollTo(0,document.body.scrollHeight); 
      
      //Hide all modals
      _.each(m, (i) => _.hide(i));
   } 
   
   //Reset slider
   _sliderMoveTo({
      element: s,
      width: 500,
      item: 1
   })
   
   //toggle modal class
   _.toggle(modal, "active");
}