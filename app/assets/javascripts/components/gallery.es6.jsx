class Gallery extends React.Component {
  render () {
    const { gallery } = this.props;
    //  creating a constant gallery

    return (
      <div>
      {gallery.map(({ id, thumbnail_url }) => (
         <img key={ id } src={ thumbnail_url } />
       ))
      }
      </div>
    )
  }
}

// map is like each.do with ruby, i am iterating over with the id and thumbnail url
